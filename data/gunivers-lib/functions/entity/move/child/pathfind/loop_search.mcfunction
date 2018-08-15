execute unless entity @e[tag=Glib_Pathfind_Stop] run function gunivers-lib:entity/move/child/pathfind/get_possible_moves

#Stop Conditions
execute as @e[tag=Glib_Pathfind_Target] at @s if entity @e[tag=Glib_Pathfind_Move,distance=..0.7] run tag @s add Glib_Pathfind_Found
scoreboard players remove @e[tag=Glib_Pathfind_Target] Var2 1
tag @e[tag=Glib_Pathfind_Target,scores={Var2=..0},tag=!Glib_Pathfind_Found] add Glib_Pathfind_NotFound
tag @e[tag=Glib_Pathfind_Found] add Glib_Pathfind_Stop
tag @e[tag=Glib_Pathfind_NotFound] add Glib_Pathfind_Stop

# Loop
execute as @e[tag=Glib_Pathfind_Target,tag=!Glib_Pathfind_Stop] at @s as @e[tag=Glib_Pathfind_Move,tag=!Glib_Pathfind_Blocked,limit=1,sort=nearest] at @s run function gunivers-lib:entity/move/child/pathfind/loop_search
