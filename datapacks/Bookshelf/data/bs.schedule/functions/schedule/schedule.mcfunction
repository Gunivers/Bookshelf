# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

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

# Handle the unit then schedule the callback on success.
scoreboard players set #success bs.data 1
execute if data storage bs:ctx _.unit run function bs.schedule:schedule/unit/handle with storage bs:ctx _
execute if score #success bs.data matches 0 run return fail
function bs.schedule:schedule/callback with storage bs:ctx _

# Get the current context (entity location and selector)
tp B5-0-0-0-1 ~ ~ ~ ~ ~
data modify storage bs:ctx _.Pos set from entity B5-0-0-0-1 Pos
data modify storage bs:ctx _.Rotation set from entity B5-0-0-0-1 Rotation
data modify storage bs:ctx _.Owner set from entity @s UUID
execute in minecraft:overworld run tp B5-0-0-0-1 -30000000 0 1605

# Compute the game time at which the command must be executed and add a unique id.
execute store result score #schedule.time bs.data run data get storage bs:ctx _.time 1
execute store result score #schedule.gtime bs.data run time query gametime
execute store result storage bs:ctx _.time int 1 run scoreboard players operation #schedule.time bs.data += #schedule.gtime bs.data
execute store result storage bs:ctx _.suid int 1 run scoreboard players add #schedule.suid bs.data 1

# Add the command to the schedule queue
data modify storage bs:data schedule prepend from storage bs:ctx _
function #bs.log:info {feature:"schedule.schedule", path:"#bs.schedule:schedule", message:'"Command scheduled."'}
return run data get storage bs:ctx _.suid 1
