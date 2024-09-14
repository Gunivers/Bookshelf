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
#
# Documentation of the feature: https://bookshelf.docs.gunivers.net/en/latest/modules/interaction.html#on-event
# ------------------------------------------------------------------------------------------------------------

# Note:
#  Add a new callback to trigger when the current interaction is leave leaveed.
#
# Input:
#  - macro variable { callback: <function>, executor: target|source|<selector> | { selector: <selector>, lazy: true|false } }
# Output:
#  - Fail if the current entity is not a listener.

execute unless predicate bs.interaction:is_listener run function #bs.log:error { namespace: bs.interaction, path: "bs.interaction:event/leave/add", tag: "interaction.leave.add", message: '"The current entity is not a listener."' }
execute unless predicate bs.interaction:is_listener run return fail
$data modify storage bs:ctx _ set value { callback: "$(callback)", executor: $(executor) }

# The executor should be interpreted now only if it is a selector or if it is an object with lazy set to false
execute if data storage bs:ctx _.executor{lazy: false} run data modify storage bs:ctx _.should_interpret set value true
execute unless data storage bs:ctx _.should_interpret unless data storage bs:ctx _{executor: "target"} unless data storage bs:ctx _{executor: "source"} unless data storage bs:ctx _.executor.selector run data modify storage bs:ctx _.should_interpret set value true
execute unless data storage bs:ctx _.should_interpret run data modify storage bs:ctx _.should_interpret set value false

# If executor is an object, replace the executor by the internal selector
execute if data storage bs:ctx _.executor.lazy run data modify storage bs:ctx _.executor set from storage bs:ctx _.executor.selector

# Else, we evaluate the selector
execute if data storage bs:ctx _{should_interpret: true} store result score _ bs.ctx run function bs.interaction:event/leave/evaluate_selector with storage bs:ctx _
execute if score _ bs.ctx matches 0 run function #bs.log:error { namespace: bs.interaction, path: "bs.interaction:event/leave/add", tag: "interaction.event.leave.add", message: '["","The selector \\\'",{"nbt":"_.executor","storage":"bs:ctx"},"\\\' is not valid."]' }
execute if score _ bs.ctx matches ..0 run return fail

# Set if the executor has been interpreted
data modify storage bs:ctx _.interpreted set from storage bs:ctx _.should_interpret

execute store result storage bs:ctx _.id int 1 run scoreboard players get @s bs.id
execute store result storage bs:ctx _.callback_id int 1 run function bs.interaction:event/leave/get_new_id with storage bs:ctx _
tag @s add bs.interaction.listen_leave
tag @s add bs.interaction.hover
function bs.interaction:event/leave/register_function with storage bs:ctx _
