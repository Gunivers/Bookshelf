tag @e[tag=Glib_Pathfind] add Glib_Pathfind_Old
tag @s add Glib_Pathfind_Blocked
data merge entity @s {ArmorItems:[{},{},{},{id:"gold_block",Count:1b}]}

#X
execute positioned ~1 ~ ~ unless entity @e[tag=Glib_Pathfind,distance=..0.7] if block ~ ~ ~ air run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Small:1,Invisible:1,Tags:["Glib_Pathfind_Move","Glib_Pathfind"]}

#Y
execute positioned ~ ~1 ~ unless entity @e[tag=Glib_Pathfind,distance=..0.7] if block ~ ~ ~ air run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Small:1,Invisible:1,Tags:["Glib_Pathfind_Move","Glib_Pathfind"]}

#Z
execute positioned ~ ~ ~1 unless entity @e[tag=Glib_Pathfind,distance=..0.7] if block ~ ~ ~ air run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Small:1,Invisible:1,Tags:["Glib_Pathfind_Move","Glib_Pathfind"]}

#-X
execute positioned ~-1 ~ ~ unless entity @e[tag=Glib_Pathfind,distance=..0.7] if block ~ ~ ~ air run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Small:1,Invisible:1,Tags:["Glib_Pathfind_Move","Glib_Pathfind"]}

#-Y
execute positioned ~ ~-1 ~ unless entity @e[tag=Glib_Pathfind,distance=..0.7] if block ~ ~ ~ air run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Small:1,Invisible:1,Tags:["Glib_Pathfind_Move","Glib_Pathfind"]}

#-Z
execute positioned ~ ~ ~-1 unless entity @e[tag=Glib_Pathfind,distance=..0.7] if block ~ ~ ~ air run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Small:1,Invisible:1,Tags:["Glib_Pathfind_Move","Glib_Pathfind"]}


# Path Cost
scoreboard players operation @e[tag=Glib_Pathfind_Move,tag=!Glib_Pathfind_Old] PathCost = @s PathCost
scoreboard players add @e[tag=Glib_Pathfind_Move,tag=!Glib_Pathfind_Old] PathCost 1

