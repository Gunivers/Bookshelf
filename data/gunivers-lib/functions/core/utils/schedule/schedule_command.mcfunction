# NAME: Schedule Command
# PATH: gunivers-lib:utils/schedule/schedule_command

# AUTHOR: theogiraudet
# CONTRIBUTOR:
# - Redcoal

# VERSION: 1.0
# MINECRAFT: 1.14

# INPUT: @e[tag=ASGlibCache] ArmorItems[0].tag.Buffer
# OUTPUT: @e[tag=ASGlibCache] Res

# NOTE: Allows to schedule the execution of a command. 
#	Unlike the schedule command, this system allows to schedule commands (and not only functions) and it is possible to schedule several times the same command. 
#	If a command is registered in a tick where commands are already registered, adds the command after those already registered. 
#	This system takes 4 parameters (required):
#	  - Id: the id of the scheduled command (not necessarily unique).
#	  - Command: the command to be executed.
#	  - Timer: the time to wait before executing.
#	  - TimeUnit: the unit of the specified time (tick, second or minute).
#	Returns the execution tick of the registered command.
#	Example of utilisation:
#		data modify entity @e[tag=ASGlibCache,limit=1] ArmorItems[0].tag.Buffer set value {Command:"say Slime",Timer:5,TimeUnit:"second",Id:"T01"}
#		function gunivers-lib:core/utils/schedule/schedule_command

# CODE:
scoreboard objectives add Var0 dummy
scoreboard objectives add Var1 dummy
scoreboard objectives add Var2 dummy

execute as @e[tag=ASGlibCache] if data entity @s ArmorItems[0].tag.Buffer.Id if data entity @s ArmorItems[0].tag.Buffer.Timer if data entity @s ArmorItems[0].tag.Buffer.TimeUnit if data entity @s ArmorItems[0].tag.Buffer.Command run tag @s add Valid

execute as @e[tag=Valid] run function gunivers-lib:core/utils/schedule/child/compute_tick
execute as @e[tag=Valid] run function gunivers-lib:core/utils/cache/select_jukebox

execute as @e[tag=Valid] at @e[tag=HeadGlibCache] run data modify block ~ ~ ~ ArmorItems[0].tag.Buffer2 set value []
execute as @e[tag=Valid] at @e[tag=HeadGlibCache] run data modify entity @s ArmorItems[0].tag.Buffer2 set from block ~ ~ ~ RecordItem.tag.ScheduleCommands
execute as @e[tag=Valid] at @e[tag=HeadGlibCache] run data modify entity @s ArmorItems[0].tag.Buffer3 set value []
execute as @e[tag=Valid] run function gunivers-lib:core/utils/schedule/child/schedule_command_rec

execute as @e[tag=Valid] at @e[tag=HeadGlibCache] run data modify block ~ ~ ~ RecordItem.tag.ScheduleCommands set from entity @s ArmorItems[0].tag.Buffer2
execute as @e[tag=Valid] at @e[tag=HeadGlibCache] run data modify block ~ ~ ~ RecordItem.tag.ScheduleCommands prepend from entity @s ArmorItems[0].tag.Buffer3[]

tag @e[tag=Valid] remove Valid