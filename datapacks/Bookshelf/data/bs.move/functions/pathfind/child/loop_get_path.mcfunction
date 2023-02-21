tag @s add bs_Pathfind_Rewind
tag @s add bs_Pathfind_Rewind_Head

tag @e[tag=bs_Pathfind,tag=!bs_Pathfind_Rewind,distance=0.1..1.5] add bs_Pathfind_Rewind_Check


scoreboard players operation @s bs.in.2 > @e[tag=bs_Pathfind_Rewind_Check] PathCost
scoreboard players operation @s bs.in.2 < @e[tag=bs_Pathfind_Rewind_Check] PathCost

execute as @e[tag=bs_Pathfind_Rewind_Check] if score @s PathCost = @e[tag=bs_Pathfind_Rewind_Head,limit=1] bs.in.2 run tag @s add bs_Pathfind_Rewind_Head


tag @s remove bs_Pathfind_Rewind_Head
tag @e remove bs_Pathfind_Rewind_Check

execute at @e[tag=bs_Pathfind_Source] at @e[tag=bs_Pathfind_Rewind_Head,limit=1,sort=nearest] run tag @e[tag=bs_Pathfind_Rewind_Head,distance=0.1..] remove bs_Pathfind_Rewind_Head


data merge entity @s {ArmorItems:[{},{},{},{id:"redstone_block",Count:1b}]}

execute unless entity @e[tag=bs_Pathfind_Source,distance=..1.5] as @e[tag=bs_Pathfind_Rewind_Head] at @s run function bs.move:pathfind/child/loop_get_path