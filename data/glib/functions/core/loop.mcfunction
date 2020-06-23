#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Import constants
function glib:core/import/constants

# PARAMETERS

#__________________________________________________
# INIT menu refresh
scoreboard objectives add Data dummy


scoreboard players set @a[scores={Data=5..}] Data 0
scoreboard objectives add Data dummy
scoreboard players add @a Data 1
execute as @a[tag=Glib_Menu,scores={Data=1}] at @s run function glib:core/menu/main
function glib:core/utils/cache/cache_loop

# Loop Schedule
execute as @e[tag=Glib_Cache_Head] at @s run function glib:core/utils/schedule/child/loop_schedule

# Debug recorder
execute as @a[tag=Glib_Debug_Stick] run function glib:core/menu/debug/debug_stick
execute as @a[tag=Glib_Debug,tag=Glib_Debug_global.display.tick] run function glib:core/debug/display_tick
execute as @a[tag=Glib_Debug,tag=Glib_Debug_entity.target_entity_manager,limit=1] at @s run function glib:core/menu/debug/entity/target_entity_manager

# glib.debug.id for debug
scoreboard objectives add glib.debug.id dummy
scoreboard players add @e glib.debug.id 0
execute as @e[scores={glib.debug.id=0},limit=1] run scoreboard players add glib.debug.id Data 1
execute as @e[scores={glib.debug.id=0},limit=1] run scoreboard players operation @s glib.debug.id = glib.debug.id Data
