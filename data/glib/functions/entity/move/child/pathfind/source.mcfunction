scoreboard players set @s PathCost 0

# Loop if locations doesn't match
function glib:entity/move/config/pathfind/possible_moves/main
scoreboard players operation @e[tag=Glib_Pathfind_Move] glib.var3 = @e[tag=Glib_Pathfind_Source,limit=1] glib.var3
execute at @s unless entity @s[tag=Glib_Pathfind_Target,distance=..0.7] run function glib:entity/move/child/pathfind/loop_search

# Generate path
execute as @e[tag=Glib_Pathfind_Target] at @s as @e[tag=Glib_Pathfind_Move,limit=1,sort=nearest] at @s run function glib:entity/move/child/pathfind/loop_get_path

