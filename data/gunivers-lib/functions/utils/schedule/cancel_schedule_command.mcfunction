# NAME: Cancel Shedule Command
# PATH: gunivers-lib:utils/schedule/cancel_schedule_command

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.14

# INPUT: @e[tag=ASGlibCache] ArmorItems[0].tag.Buffer

# NOTE: Allows to cancel scheduled command by the ID defined in the input. If several scheduled commands have the same ID, cancels the first occurrence found.

# CODE:
function gunivers-lib:core/cache/select_jukebox

execute at @e[tag=HeadGlibCache] run data modify entity @e[tag=ASGlibCache,limit=1] ArmorItems[0].tag.Buffer2 set from block ~ ~ ~ RecordItem.tag.ScheduleCommands
execute as @e[tag=ASGlibCache] run data modify entity @s ArmorItems[0].tag.Buffer3 set value []
execute as @e[tag=ASGlibCache] run function gunivers-lib:utils/schedule/child/cancel_schedule_command_rec

execute at @e[tag=HeadGlibCache] run data modify block ~ ~ ~ RecordItem.tag.ScheduleCommands set from entity @e[tag=ASGlibCache,limit=1] ArmorItems[0].tag.Buffer2
execute at @e[tag=HeadGlibCache] run data modify block ~ ~ ~ RecordItem.tag.ScheduleCommands prepend from entity @e[tag=ASGlibCache,limit=1] ArmorItems[0].tag.Buffer3[]