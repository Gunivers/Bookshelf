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
#  Place the tag bs.interaction.executor on the entity that will execute the function.
#  Input:
#   - storage bs:in interaction.callback.executor
#  Output:
#   - bs:ctx _: The UUID of the executor.

data modify storage bs:ctx _.multiple set value false
execute if data storage bs:in interaction.callback{interpreted: 1} run data modify storage bs:ctx _.executor set from storage bs:in interaction.callback.executor
execute if data storage bs:in interaction.callback{interpreted: 0, executor: "source"} run data modify storage bs:ctx _.executor set from entity @n[tag=bs.interaction.source] UUID
execute if data storage bs:in interaction.callback{interpreted: 0, executor: "target"} run data modify storage bs:ctx _.executor set from entity @n[tag=bs.interaction.target] UUID
# Evaluate the selector stored in the executor and set bs:ctx _.executor to the UUID of the entity pointed by the selector.
# If the selector point to multiple entities, bs:ctx _.executor is an array of UUIDs and bs:ctx_.multiple is set to true.
execute unless data storage bs:ctx _.executor run function bs.interaction:on_event/evaluate_executor with storage bs:in interaction.callback
