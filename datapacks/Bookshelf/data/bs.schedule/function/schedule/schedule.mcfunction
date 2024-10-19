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
# Documentation of the feature: https://bookshelf.docs.gunivers.net/en/latest/modules/schedule.html#schedule
# ------------------------------------------------------------------------------------------------------------

$data modify storage bs:ctx _ set value $(with)

# Handle the unit, return early on failure
scoreboard players set #s bs.ctx 1
execute if data storage bs:ctx _.unit run function bs.schedule:schedule/unit/handle with storage bs:ctx _
execute if score #s bs.ctx matches 0 run return fail

# Schedule the callback, update the gametime and add a unique id
execute store result storage bs:data schedule.entry.time int 1 run function bs.schedule:schedule/callback with storage bs:ctx _
execute store result storage bs:data schedule.entry.suid int 1 run scoreboard players add #schedule.suid bs.data 1

# Get the current context (entity location and selector)
function bs.schedule:schedule/context/get_dimension
execute summon minecraft:marker run function bs.schedule:schedule/context/get_position
function bs.schedule:schedule/context/format_command with storage bs:ctx _
data modify storage bs:data schedule.entry.uuid set value [I;181,0,0,4]
data modify storage bs:data schedule.entry.uuid set from entity @s UUID

# Add the command to the schedule queue
data modify storage bs:data schedule.entry.id set from storage bs:ctx _.id
data modify storage bs:data schedule.queue prepend from storage bs:data schedule.entry
function #bs.log:info {namespace:"bs.schedule", tag:"schedule", path:"#bs.schedule:schedule", message:'"Command scheduled."'}
return run data get storage bs:data schedule.entry.suid 1
