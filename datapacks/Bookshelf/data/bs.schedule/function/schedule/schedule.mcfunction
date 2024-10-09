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
scoreboard players set #success bs.data 1
execute if data storage bs:ctx _.unit run function bs.schedule:schedule/unit/handle with storage bs:ctx _
execute if score #success bs.data matches 0 run return fail

# Schedule the callback, update the gametime and add a unique id
execute store result storage bs:ctx _.time int 1 run function bs.schedule:schedule/callback with storage bs:ctx _
execute store result storage bs:ctx _.suid int 1 run scoreboard players add #schedule.suid bs.data 1

# Get the current context (entity location and selector)
data modify storage bs:ctx _.Owner set from entity @s UUID
execute as B5-0-0-0-1 run function bs.schedule:schedule/context

# Add the command to the schedule queue
data modify storage bs:data schedule.queue prepend from storage bs:ctx _
function #bs.log:info {namespace:"bs.schedule", tag:"schedule", path:"#bs.schedule:schedule", message:'"Command scheduled."'}
return run data get storage bs:ctx _.suid 1
