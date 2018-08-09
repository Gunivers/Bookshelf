scoreboard players remove @e[tag=Glib_Pathfind_Target] Var2 1

execute if entity @e[tag=Glib_Pathfind_Target,scores={Var2=1..},tag=!Glib_Pathfind_Path_Found] run function gunivers-lib:entity/move/child/pathfind_get_possible_moves

execute as @e[tag=Glib_Pathfind_Target] at @s align x align y align z positioned ~0.5 ~ ~0.5 if entity @e[tag=Glib_Pathfind_Move,distance=..0.5] run tag @s add Glib_Pathfind_Path_Found

execute as @e[tag=Glib_Pathfind_Target] if entity @e[tag=Glib_Pathfind_Target,scores={Var2=1..},tag=!Glib_Pathfind_Path_Found] run function gunivers-lib:entity/move/child/pathfind_get_nearest_points

execute as @e[tag=Glib_Pathfind_NewNext] at @s if entity @e[tag=Glib_Pathfind_Target,scores={Var2=1..},tag=!Glib_Pathfind_Path_Found] run function gunivers-lib:entity/move/child/pathfind_loop_search