# ------------------------------------------------------------------------------------------------------------
# Copyright (c) 2024 Gunivers
#
# This file is part of the Bookshelf project (https://github.com/Gunivers/Bookshelf).
#
# This source code is subject to the terms of the Mozilla Public License, v. 2.0.
# If a copy of the MPL was not distributed with this file, You can obtain one at http://mozilla.org/MPL/2.0/.
#
# Conditions:
# - You may use this file in compliance with the MPL v2.0
# - Any modifications must be documented and disclosed under the same license
#
# For more details, refer to the MPL v2.0.
# ------------------------------------------------------------------------------------------------------------

# Note:
#  Find the executor of the callback.
#
# Input:
#  - macro variable { executor: <selector> }
# Output:
#  - bs:ctx _.executor is set to the UUID of the entity pointed by the selector.
#    If the selector point to multiple entities, the first one is selected and the function triggers a warning.
#    If the selector point to no entity, the function return -1 and triggers an error.
#    Return 1 otherwise.

$tag $(executor) add bs.interaction.executor
execute store result score _ bs.ctx if entity @e[tag=bs.interaction.executor]
execute if score _ bs.ctx matches 0 run function #bs.log:error { namespace: bs.interaction, path: "bs.interaction:event/leave/evaluate_selector", tag: "interaction.event.leave.add", message: '["","The selector \\\'",{"nbt":"_.executor","storage":"bs:ctx"},"\\\' does not point to any entity."]' }
execute if score _ bs.ctx matches 0 run return -1
execute if score _ bs.ctx matches 2.. run function #bs.log:warn { namespace: bs.interaction, path: "bs.interaction:event/leave/evaluate_selector", tag: "interaction.event.leave.add", message: '["","The selector \\\'",{"nbt":"_.executor","storage":"bs:ctx"},"\\\' points to multiple entities. Only the first one is selected."]' }
data modify storage bs:ctx _.executor set from entity @e[tag=bs.interaction.executor, limit=1] UUID
tag @e[tag=bs.interaction.executor] remove bs.interaction.executor
return 1
