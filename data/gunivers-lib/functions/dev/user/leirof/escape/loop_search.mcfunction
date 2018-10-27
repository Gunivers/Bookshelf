execute unless entity @e[tag=Glib_Pathfind_Stop] run function gunivers-lib:entity/move/child/pathfind/get_possible_moves

#Stop Conditions

scoreboard players operation @s LocX -= @e[tag=Glib_Pathfind_Target] LocX
scoreboard players operation @s LocY -= @e[tag=Glib_Pathfind_Target] LocY
scoreboard players operation @s LocZ -= @e[tag=Glib_Pathfind_Target] LocZ

scoreboard players operation @s LocX *= @s LocX
scoreboard players operation @s LocY *= @s LocY
scoreboard players operation @s LocZ *= @s LocZ

scoreboard players operation @s Var1 = @s LocX
scoreboard players operation @s Var1 += @s LocY
scoreboard players operation @s Var1 += @s LocZ

execute if score @s Var1 >= @e[tag=Glib_Escape_Target] Var3 run tag @e[tag=Glib_Escape_Target] add Glib_Escape_Done
execute if entity @e[tag=Glib_Escape_Target,scores={Var2=}] run tag @e[tag=Glib_Escape_Target] add Glib_Escape_Abort
tag @e[tag=Glib_Escape_Done] add Glib_Escape_Stop
tag @e[tag=Glib_Escape_Abort] add Glib_Escape_Stop

# Loop
execute as @e[tag=Glib_Pathfind_Target,tag=!Glib_Escape_Stop] at @s as @e[tag=Glib_Pathfind_Move,tag=!Glib_Pathfind_Blocked,limit=1,sort=nearest] at @s run function gunivers-lib:entity/move/child/pathfind/loop_search
