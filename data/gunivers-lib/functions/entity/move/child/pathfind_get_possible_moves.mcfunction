tag @e[tag=Glib_Pathfind] add Glib_Pathfind_Old

execute if block ~1 ~-1 ~ air if block ~1 ~ ~ air unless block ~1 ~-2 ~ air run summon armor_stand ~1 ~-1 ~ {NoGravity:1,Marker:1,Small:1,Invisible:1,ArmorItems:[{},{},{},{id:"iron_block",Count:1b}],Tags:["Glib_Pathfind_Move","Glib_Pathfind"]}
execute if block ~1 ~ ~ air if block ~1 ~1 ~ air unless block ~1 ~-1 ~ air run summon armor_stand ~1 ~ ~ {NoGravity:1,Marker:1,Small:1,Invisible:1,ArmorItems:[{},{},{},{id:"iron_block",Count:1b}],Tags:["Glib_Pathfind_Move","Glib_Pathfind"]}
execute if block ~1 ~1 ~ air if block ~1 ~2 ~ air unless block ~1 ~ ~ air run summon armor_stand ~1 ~1 ~ {NoGravity:1,Marker:1,Small:1,Invisible:1,ArmorItems:[{},{},{},{id:"iron_block",Count:1b}],Tags:["Glib_Pathfind_Move","Glib_Pathfind"]}

execute if block ~-1 ~-1 ~ air if block ~-1 ~ ~ air unless block ~-1 ~-2 ~ air run summon armor_stand ~-1 ~-1 ~ {NoGravity:1,Marker:1,Small:1,Invisible:1,ArmorItems:[{},{},{},{id:"iron_block",Count:1b}],Tags:["Glib_Pathfind_Move","Glib_Pathfind"]}
execute if block ~-1 ~ ~ air if block ~-1 ~1 ~ air unless block ~-1 ~-1 ~ air run summon armor_stand ~-1 ~ ~ {NoGravity:1,Marker:1,Small:1,Invisible:1,ArmorItems:[{},{},{},{id:"iron_block",Count:1b}],Tags:["Glib_Pathfind_Move","Glib_Pathfind"]}
execute if block ~-1 ~1 ~ air if block ~-1 ~2 ~ air unless block ~-1 ~ ~ air run summon armor_stand ~-1 ~1 ~ {NoGravity:1,Marker:1,Small:1,Invisible:1,ArmorItems:[{},{},{},{id:"iron_block",Count:1b}],Tags:["Glib_Pathfind_Move","Glib_Pathfind"]}

execute if block ~ ~-1 ~-1 air if block ~ ~ ~-1 air unless block ~ ~-2 ~-1 air run summon armor_stand ~ ~-1 ~-1 {NoGravity:1,Marker:1,Small:1,Invisible:1,ArmorItems:[{},{},{},{id:"iron_block",Count:1b}],Tags:["Glib_Pathfind_Move","Glib_Pathfind"]}
execute if block ~ ~ ~-1 air if block ~ ~1 ~-1 air unless block ~ ~-1 ~-1 air run summon armor_stand ~ ~ ~-1 {NoGravity:1,Marker:1,Small:1,Invisible:1,ArmorItems:[{},{},{},{id:"iron_block",Count:1b}],Tags:["Glib_Pathfind_Move","Glib_Pathfind"]}
execute if block ~ ~1 ~-1 air if block ~ ~2 ~-1 air unless block ~ ~ ~-1 air run summon armor_stand ~ ~1 ~-1 {NoGravity:1,Marker:1,Small:1,Invisible:1,ArmorItems:[{},{},{},{id:"iron_block",Count:1b}],Tags:["Glib_Pathfind_Move","Glib_Pathfind"]}

execute if block ~ ~-1 ~1 air if block ~ ~ ~1 air unless block ~ ~-2 ~1 air run summon armor_stand ~ ~-1 ~1 {NoGravity:1,Marker:1,Small:1,Invisible:1,ArmorItems:[{},{},{},{id:"iron_block",Count:1b}],Tags:["Glib_Pathfind_Move","Glib_Pathfind"]}
execute if block ~ ~ ~1 air if block ~ ~1 ~1 air unless block ~ ~-1 ~1 air run summon armor_stand ~ ~ ~1 {NoGravity:1,Marker:1,Small:1,Invisible:1,ArmorItems:[{},{},{},{id:"iron_block",Count:1b}],Tags:["Glib_Pathfind_Move","Glib_Pathfind"]}
execute if block ~ ~1 ~1 air if block ~ ~2 ~1 air unless block ~ ~ ~1 air run summon armor_stand ~ ~1 ~1 {NoGravity:1,Marker:1,Small:1,Invisible:1,ArmorItems:[{},{},{},{id:"iron_block",Count:1b}],Tags:["Glib_Pathfind_Move","Glib_Pathfind"]}



execute as @e[tag=Glib_Pathfind_PreOld] at @s run kill @e[tag=Glib_Pathfind_Move,tag=!Glib_Pathfind_PreOld,distance=..0.5]
tag @e[tag=Glib_Pathfind_Move] add Glib_Pathfind_PreOld

execute if entity @e[tag=PossibleMove,tag=!Old] run tag @s add Glib_Pathfind_HaveMove


scoreboard players operation @e[tag=Glib_Pathfind_Move,tag=!Glib_Pathfind_Old] ParentId = @s Id
scoreboard players operation @e[tag=Glib_Pathfind_Move,tag=!Glib_Pathfind_Old] PathCost = @s PathCost
scoreboard players add @e[tag=Glib_Pathfind_Move,tag=!Glib_Pathfind_Old] PathCost 1

