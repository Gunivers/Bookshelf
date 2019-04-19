# CONFIG
#   Init Menu Refresh Frenquency (20 = 1 seconde). If you use the lib in solo, you can refresh the menu all ticks.

scoreboard objectives add Glib_Data dummy

function gunivers-lib:utils/import/constants

scoreboard players set @a[scores={Glib_Data=5..}] Glib_Data 0

scoreboard objectives add Glib_Data dummy
scoreboard players add @a Glib_Data 1
execute as @a[tag=Glib_Init_Menu,scores={Glib_Data=1}] at @s run function gunivers-lib:utils/init/main
function gunivers-lib:utils/cache/cache_loop


execute as @a[tag=Glib_Debug_Stick] run function gunivers-lib:utils/debug/debug_record
execute as @p[tag=Glib_Debug,tag=!Glib_Init_Menu,tag=Glib_Debug_Disp_Tick] run function gunivers-lib:utils/debug/display_tick
execute as @p[tag=Glib_Debug,tag=Debug_Entity_Management,tag=!Glib_Init_Menu] at @s run function gunivers-lib:utils/debug/target_entity_manager