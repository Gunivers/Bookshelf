tag @e[tag=bs_Pathfind] add bs_Pathfind_Old
tag @s add bs_Pathfind_Blocked
data merge entity @s {ArmorItems:[{},{},{},{id:"gold_block",Count:1b}]}


#X
execute positioned ~1 ~ ~ unless entity @e[tag=bs_Pathfind,distance=..0.7] if block ~ ~ ~ air run summon armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{id:"iron_block",Count:1b}],NoGravity:1,Marker:1,Small:1,Invisible:1,Tags:["bs","bs_Pathfind_Move","bs_Pathfind"]}

#Y
execute positioned ~ ~1 ~ unless entity @e[tag=bs_Pathfind,distance=..0.7] if block ~ ~ ~ air run summon armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{id:"iron_block",Count:1b}],NoGravity:1,Marker:1,Small:1,Invisible:1,Tags:["bs","bs_Pathfind_Move","bs_Pathfind"]}

#Z
execute positioned ~ ~ ~1 unless entity @e[tag=bs_Pathfind,distance=..0.7] if block ~ ~ ~ air run summon armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{id:"iron_block",Count:1b}],NoGravity:1,Marker:1,Small:1,Invisible:1,Tags:["bs","bs_Pathfind_Move","bs_Pathfind"]}

#-X
execute positioned ~-1 ~ ~ unless entity @e[tag=bs_Pathfind,distance=..0.7] if block ~ ~ ~ air run summon armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{id:"iron_block",Count:1b}],NoGravity:1,Marker:1,Small:1,Invisible:1,Tags:["bs","bs_Pathfind_Move","bs_Pathfind"]}

#-Y
execute positioned ~ ~-1 ~ unless entity @e[tag=bs_Pathfind,distance=..0.7] if block ~ ~ ~ air run summon armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{id:"iron_block",Count:1b}],NoGravity:1,Marker:1,Small:1,Invisible:1,Tags:["bs","bs_Pathfind_Move","bs_Pathfind"]}

#-Z
execute positioned ~ ~ ~-1 unless entity @e[tag=bs_Pathfind,distance=..0.7] if block ~ ~ ~ air run summon armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{id:"iron_block",Count:1b}],NoGravity:1,Marker:1,Small:1,Invisible:1,Tags:["bs","bs_Pathfind_Move","bs_Pathfind"]}


# Path Cost
scoreboard players operation @e[tag=bs_Pathfind_Move,tag=!bs_Pathfind_Old] PathCost = @s PathCost
scoreboard players add @e[tag=bs_Pathfind_Move,tag=!bs_Pathfind_Old] PathCost 1

