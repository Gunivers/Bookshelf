# NAME: Schedule Command
# PATH: bs.schedule:schedule_command

# AUTHOR: theogiraudet
# CONTRIBUTOR:
# - Redcoal

# VERSION: 1.0
# MINECRAFT: 1.14

# INPUT: @e[tag=bs_Cache_Source] ArmorItems[0].tag.Buffer
# OUTPUT: @e[tag=bs_Cache_Source] bs.out.0

# NOTE: Allows to schedule the execution of a command.
#	Unlike the schedule command, this system allows to schedule commands (and not only functions) and it is possible to schedule several times the same command.
#	If a command is registered in a tick where commands are already registered, adds the command after those already registered.
#	This system takes 4 parameters (required):
#	  - bs.id: the id of the scheduled command (not necessarily unique).
#	  - Command: the command to be executed.
#	  - Timer: the time to wait before executing.
#	  - TimeUnit: the unit of the specified time (tick, second or minute).
#	Returns the execution tick of the registered command.
#	Example of utilisation:
#		data modify entity @e[tag=bs_Cache_Source,limit=1] ArmorItems[0].tag.Buffer set value {Command:"say Slime",Timer:5,TimeUnit:"second",bs.id:"T01"}
#		function bs.schedule:schedule_command

# CODE:

execute as @e[tag=bs_Cache_Source] if data entity @s ArmorItems[0].tag.Buffer.bs.id if data entity @s ArmorItems[0].tag.Buffer.Timer if data entity @s ArmorItems[0].tag.Buffer.TimeUnit if data entity @s ArmorItems[0].tag.Buffer.Command run tag @s add Valid

execute as @e[tag=Valid] run function bs_child:default/core/schedule/compute_tick
execute as @e[tag=Valid] run function bs.cache:select_jukebox

execute as @e[tag=Valid] at @e[tag=bs_Cache_Head] run data modify block ~ ~ ~ ArmorItems[0].tag.Buffer2 set value []
execute as @e[tag=Valid] at @e[tag=bs_Cache_Head] run data modify entity @s ArmorItems[0].tag.Buffer2 set from block ~ ~ ~ RecordItem.tag.ScheduleCommands
execute as @e[tag=Valid] at @e[tag=bs_Cache_Head] run data modify entity @s ArmorItems[0].tag.Buffer3 set value []
execute as @e[tag=Valid] run function bs_child:default/core/schedule/schedule_command_rec

execute as @e[tag=Valid] at @e[tag=bs_Cache_Head] run data modify block ~ ~ ~ RecordItem.tag.ScheduleCommands set from entity @s ArmorItems[0].tag.Buffer2
execute as @e[tag=Valid] at @e[tag=bs_Cache_Head] run data modify block ~ ~ ~ RecordItem.tag.ScheduleCommands prepend from entity @s ArmorItems[0].tag.Buffer3[]

tag @e[tag=Valid] remove Valid
