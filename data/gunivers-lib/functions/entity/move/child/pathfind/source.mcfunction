scoreboard players set @s PathCost 0
scoreboard players set @e[tag=Glib_Pathfind_Target] Var2 500

# Loop if locations doesn't match
execute at @s unless entity @e[tag=Glib_Pathfind_Target,distance=..0.7] run function gunivers-lib:entity/move/child/pathfind/get_possible_moves
execute at @s unless entity @s[tag=Glib_Pathfind_Target,distance=..0.7] run function gunivers-lib:entity/move/child/pathfind/loop_search

# Generate path
execute as @e[tag=Glib_Pathfind_Target] at @s as @e[tag=Glib_Pathfind_Move,limit=1,sort=nearest] at @s run function gunivers-lib:entity/move/child/pathfind/loop_get_path

