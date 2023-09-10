# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: theogiraudet, Aksiome
# Contributors:

# Version: 2.0
# Created: ??/??/2019 (1.14)
# Last modification: 10/09/2023 (1.20.2)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/schedule.html#schedule
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

$data modify storage bs:data schedule.command set value { id: "$(id)", command: "$(command)", time: $(time), unit: "$(unit)" }

# Use dedicated functions for units to benefit from macro caching.
function bs.schedule:schedule/unit/get with storage bs:data schedule.command
execute if score #schedule.success bs.data matches 0 run function #bs.log:error {feature:"schedule.schedule", path:"bs.schedule:schedule/unit/get", message:'["\'", {"nbt":"schedule.command.unit","storage":"bs:data"}, "\' isn\'t a supported unit."]'}
execute if score #schedule.success bs.data matches 0 run return -1
function bs.schedule:schedule/unit/normalize with storage bs:data schedule.unit
data remove storage bs:data schedule.unit

# Compute the game time at which the command must be executed and add a unique id.
execute store result score #schedule.game_time bs.data run time query gametime
execute store result storage bs:data schedule.command.time int 1 run scoreboard players operation #schedule.time bs.data += #schedule.game_time bs.data
execute store result storage bs:data schedule.command.suid int 1 run scoreboard players add #schedule.suid bs.data 1
data remove storage bs:data schedule.command.unit

# Add the command to the schedule stack, ordered by the execution time
execute store result score #schedule.time2 bs.data run data get storage bs:data schedule.commands[-1].time
execute unless score #schedule.time2 bs.data matches 0 if score #schedule.time bs.data > #schedule.time2 bs.data run function bs.schedule:schedule/pop_recursive
data modify storage bs:data schedule.commands append from storage bs:data schedule.command
data modify storage bs:data schedule.commands append from storage bs:data schedule.top_commands[]
data remove storage bs:data schedule.top_commands

execute store result score #schedule.next_time bs.data run data get storage bs:data schedule.commands[-1].time

function #bs.log:info {feature:"schedule.schedule", path:"bs.schedule:schedule/schedule", message:'"Command scheduled."'}
