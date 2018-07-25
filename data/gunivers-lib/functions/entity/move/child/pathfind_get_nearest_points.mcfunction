execute as @e[tag=Glib_Pathfind_Move,tag=!Glib_Pathfind_Old] run function gunivers-lib:entity/location/get

tag @e remove Glib_Pathfind_Check
scoreboard players add @e[tag=Glib_Pathfind_Move] Var1 0
tag @e[tag=Glib_Pathfind_Move,tag=!Glib_Pathfind_Next,scores={Var1=0}] add Glib_Pathfind_Check

execute as @e[tag=Glib_Pathfind_Check] run scoreboard players operation @s LocX -= @e[tag=Glib_Pathfind_Target] LocX
execute as @e[tag=Glib_Pathfind_Check] run scoreboard players operation @s LocY -= @e[tag=Glib_Pathfind_Target] LocY
execute as @e[tag=Glib_Pathfind_Check] run scoreboard players operation @s LocZ -= @e[tag=Glib_Pathfind_Target] LocZ

execute as @e[tag=Glib_Pathfind_Check] run scoreboard players operation @s LocX *= @s LocX
execute as @e[tag=Glib_Pathfind_Check] run scoreboard players operation @s LocY *= @s LocY
execute as @e[tag=Glib_Pathfind_Check] run scoreboard players operation @s LocZ *= @s LocZ

execute as @e[tag=Glib_Pathfind_Check] run scoreboard players operation @s Var1 = @s LocX
execute as @e[tag=Glib_Pathfind_Check] run scoreboard players operation @s Var1 += @s LocY
execute as @e[tag=Glib_Pathfind_Check] run scoreboard players operation @s Var1 += @s LocZ

scoreboard players operation @s Var1 > @e[tag=Glib_Pathfind_Move,tag=!Glib_Pathfind_Next] Var1
scoreboard players operation @s Var1 < @e[tag=Glib_Pathfind_Move,tag=!Glib_Pathfind_Next] Var1
tag @e remove Glib_Pathfind_NewNext
execute as @e[tag=Glib_Pathfind_Move,tag=!Glib_Pathfind_Next] if score @s Var1 = @e[tag=Glib_Pathfind_Target,limit=1,sort=nearest] Var1 run tag @s add Glib_Pathfind_NewNext
tag @e[tag=Glib_Pathfind_NewNext] add Glib_Pathfind_Next
execute as @e[tag=Glib_Pathfind_NewNext] run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_block",Count:1b}]}
