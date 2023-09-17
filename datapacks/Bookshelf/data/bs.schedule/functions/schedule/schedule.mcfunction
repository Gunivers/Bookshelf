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

execute unless data storage bs:data schedule.command run return -1
execute if score #schedule.selector bs.data matches 0 run return -1

# Compute the game time at which the command must be executed and add a unique id.
execute store result score #schedule.time bs.data run data get storage bs:data schedule.command.time 1
execute store result score #schedule.game_time bs.data run time query gametime
execute store result storage bs:data schedule.command.time int 1 run scoreboard players operation #schedule.time bs.data += #schedule.game_time bs.data
execute store result storage bs:data schedule.command.suid int 1 run scoreboard players add #schedule.suid bs.data 1

# Add the command to the schedule stack, ordered by the execution time
execute store result score #schedule.time2 bs.data run data get storage bs:data schedule.commands[-1].time
execute unless score #schedule.time2 bs.data matches 0 if score #schedule.time bs.data > #schedule.time2 bs.data run function bs.schedule:schedule/pop_recursive
data modify storage bs:data schedule.commands append from storage bs:data schedule.command
data modify storage bs:data schedule.commands append from storage bs:data schedule._commands[]
data remove storage bs:data schedule._commands
data remove storage bs:data schedule.command

execute store result score #schedule.next_time bs.data run data get storage bs:data schedule.commands[-1].time

function #bs.log:info {feature:"schedule.schedule", path:"bs.schedule:schedule/schedule", message:'"Command scheduled."'}
