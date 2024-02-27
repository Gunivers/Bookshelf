# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: Aksiome, theogiraudet
# Contributors:

# Version: 2.2
# Created: ??/??/2019 (1.14)
# Last modification: 20/01/2024 (1.20.4)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/schedule.html#schedule
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

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
data modify storage bs:data schedule prepend from storage bs:ctx _
function #bs.log:info {feature:"schedule.schedule", path:"#bs.schedule:schedule", message:'"Command scheduled."'}
return run data get storage bs:ctx _.suid 1
