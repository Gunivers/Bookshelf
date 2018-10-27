
execute as @a[tag=Glib_Init_Menu] at @s run function gunivers-lib:utils/init/main
function gunivers-lib:utils/cache/cache_loop


execute as @a[tag=Glib_Debug_Stick] run function gunivers-lib:utils/debug/debug_record
execute as @p[tag=Glib_Debug,tag=!Glib_Init_Menu,tag=Glib_Debug_Disp_Tick] run function gunivers-lib:utils/debug/display_tick
execute as @p[tag=Glib_Debug,tag=Debug_Entity_Management,tag=!Glib_Init_Menu] at @s run function gunivers-lib:utils/debug/target_entity_manager