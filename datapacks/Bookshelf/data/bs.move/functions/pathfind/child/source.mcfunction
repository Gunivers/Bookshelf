scoreboard players set @s PathCost 0

# Loop if locations doesn't match
function bs.move:pathfind/config/possible_moves/main
scoreboard players operation @e[tag=bs_Pathfind_Move] bs.var3 = @e[tag=bs_Pathfind_Source,limit=1] bs.var3
execute at @s unless entity @s[tag=bs_Pathfind_Target,distance=..0.7] run function bs.move:pathfind/child/loop_search

# Generate path
execute as @e[tag=bs_Pathfind_Target] at @s as @e[tag=bs_Pathfind_Move,limit=1,sort=nearest] at @s run function bs.move:pathfind/child/loop_get_path

