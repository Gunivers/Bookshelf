# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: theogiraudet, Aksiome
# Contributors:

# Version: 2.1
# Created: ??/??/2019 (1.14)
# Last modification: 19/11/2023 (23w46a)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/schedule.html#schedule
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

$data modify storage bs:ctx _ set value [$(with)]

# Handle the unit and selector then return early if there is nothing to schedule.
scoreboard players set #schedule.success bs.data 1
execute if data storage bs:ctx _[0].unit run function bs.schedule:schedule/unit/handle with storage bs:ctx _[0]
execute if score #schedule.success bs.data matches 0 run return fail
execute if data storage bs:ctx _[0].selector run function bs.schedule:schedule/selector/handle
execute if score #schedule.success bs.data matches 0 run return fail

# Compute the game time at which the command must be executed and add a unique id.
execute store result score #schedule.time bs.data run data get storage bs:ctx _[0].time 1
execute store result score #schedule.gametime bs.data run time query gametime
execute store result storage bs:ctx _[0].time int 1 run scoreboard players operation #schedule.time bs.data += #schedule.gametime bs.data
execute store result storage bs:ctx _[0].suid int 1 run scoreboard players add #schedule.suid bs.data 1

# Add the command to the schedule stack, ordered by the execution time
execute store result score #schedule.time2 bs.data run data get storage bs:data schedule.commands[-1].time
execute unless score #schedule.time2 bs.data matches 0 if score #schedule.time bs.data >= #schedule.time2 bs.data run function bs.schedule:schedule/pop_recursive
data modify storage bs:data schedule.commands append from storage bs:ctx _[]

function #bs.log:info {feature:"schedule.schedule", path:"#bs.schedule:schedule", message:'"Command scheduled."'}
execute store result score #schedule.next_time bs.data run data get storage bs:data schedule.commands[-1].time
return run data get storage bs:ctx _[0].suid 1
