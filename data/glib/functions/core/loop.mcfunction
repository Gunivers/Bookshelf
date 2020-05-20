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

# Glib_Id for debug
scoreboard objectives add Glib_Id dummy
scoreboard players add @e Glib_Id 0
execute as @e[scores={Glib_Id=0},limit=1] run scoreboard players add Glib_Id Data 1
execute as @e[scores={Glib_Id=0},limit=1] run scoreboard players operation @s Glib_Id = Glib_Id Data
