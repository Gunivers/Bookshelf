scoreboard players set @s PathCost 0
scoreboard players set @e[tag=Glib_Pathfind_Target] Var2 500

# Get source and target location
function gunivers-lib:entity/location/get
execute as @e[tag=Glib_Pathfind_Target] run function gunivers-lib:entity/location/get

scoreboard players operation @s LocX -= @e[tag=Glib_Pathfind_Target] LocX
scoreboard players operation @s LocY -= @e[tag=Glib_Pathfind_Target] LocY
scoreboard players operation @s LocZ -= @e[tag=Glib_Pathfind_Target] LocZ

scoreboard players operation @s LocX *= @s LocX
scoreboard players operation @s LocY *= @s LocY
scoreboard players operation @s LocZ *= @s LocZ

scoreboard players operation @s Var1 = @s LocX
scoreboard players operation @s Var1 += @s LocY
scoreboard players operation @s Var1 += @s LocZ

# Loop if locations doesn't match
execute at @s if entity @s[scores={Var1=1..}] run function gunivers-lib:entity/move/child/pathfind_loop_search


execute as @e[tag=Glib_Pathfind_Target] as @e[tag=Glib_Pathfind_Move,limit=1,sort=nearest] at @s run function gunivers-lib:entity/move/child/pathfind_loop_get_path

