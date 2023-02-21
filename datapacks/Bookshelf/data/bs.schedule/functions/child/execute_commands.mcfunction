# NAME: Execute Commands
# PATH: bs_child:schedule/execute_commands

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.14

# CHILD OF: bs_child:schedule/loop_schedule

# NOTE: Execute the command(s) if the gametick matches to the tick saved in first element of the schedule list.

# CODE:
tag @s remove isEqual

function bs.cache:select_jukebox

execute at @s run setblock ~ ~ ~-2 chain_command_block[facing=up]{UpdateLastExecution:0b,auto:1b}

#Compare
execute at @s store result score @s bs.in.0 run data get block ~ ~ ~ RecordItem.tag.ScheduleCommands[0].GameTick 1
execute at @s if score @s bs.in.0 = @s bs.in.0 run tag @s add isEqual

#If is equal
execute at @s if entity @s[tag=isEqual] run data modify block ~ ~ ~-2 Command set from block ~ ~ ~ RecordItem.tag.ScheduleCommands[0].Command
execute at @s if entity @s[tag=isEqual] run data remove block ~ ~ ~ RecordItem.tag.ScheduleCommands[0]

#If is not equal
execute at @s if entity @s[tag=!isEqual] run setblock ~ ~ ~-2 command_block[facing=up]{UpdateLastExecution:1b,Command:""}
execute at @s if entity @s[tag=!isEqual] run setblock ~ ~1 ~-2 chain_command_block[facing=down]{UpdateLastExecution:1b,Command:""}