execute unless entity @e[tag=bs_Pathfind_Stop] run function bs.move:pathfind/config/possible_moves/main
scoreboard players operation @e[tag=bs_Pathfind_Move] bs.in.3 = @e[tag=bs_Pathfind_Source,limit=1] bs.in.3

#Stop Conditions
execute as @e[tag=bs_Pathfind_Target] at @s if entity @e[tag=bs_Pathfind_Move,distance=..0.7] run tag @s add bs_Pathfind_Found
scoreboard players remove @e[tag=bs_Pathfind_Target] bs.in.1 1
scoreboard players add LeiRoF bs.out.0 1
tag @e[tag=bs_Pathfind_Target,scores={bs.in.1=..0},tag=!bs_Pathfind_Found] add bs_Pathfind_NotFound
tag @e[tag=bs_Pathfind_Found] add bs_Pathfind_Stop
tag @e[tag=bs_Pathfind_NotFound] add bs_Pathfind_Stop

# Loop
execute as @e[tag=bs_Pathfind_Target,tag=!bs_Pathfind_Stop] at @s as @e[tag=bs_Pathfind_Move,tag=!bs_Pathfind_Blocked,limit=1,sort=nearest] at @s run function bs.move:pathfind/child/loop_search
