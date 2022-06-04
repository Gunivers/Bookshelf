# NAME: Loop Schedule
# PATH: glib_child:schedule/loop_schedule

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.14

# NOTE: Execute commands if gametick matches first schedule command of the list (sorted by increasing order). This function is executed at all ticks.

# CODE:

#Get GameTick
execute store result score @s glib.var0 run time query gametime

function glib.cache:select_command_block

#Compare first scheduled command to the gametick
execute as @e[tag=Glib_Cache_Head] at @s store result score @s glib.var0 run data get block ~ ~ ~2 RecordItem.tag.ScheduleCommands[0].GameTick 1
execute as @e[tag=Glib_Cache_Head] at @s if score @s glib.var0 = @s glib.var0 run tag @s add isEqual

#If match, prepare and active the command-block buffer for execute the command(s)
execute at @e[tag=Glib_Cache_Head,tag=isEqual] run data modify block ~ ~1 ~ UpdateLastExecution set value 0
execute at @e[tag=Glib_Cache_Head,tag=isEqual] run data modify block ~ ~1 ~ Command set value "execute as @e[tag=Glib_Cache_Head] at @s run function glib_child:default/core/schedule/execute_commands"
execute at @e[tag=Glib_Cache_Head,tag=isEqual] run data modify block ~ ~ ~ auto set value 1b