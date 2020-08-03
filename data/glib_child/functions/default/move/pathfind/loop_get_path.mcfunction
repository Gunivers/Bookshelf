tag @s add Glib_Pathfind_Rewind
tag @s add Glib_Pathfind_Rewind_Head

tag @e[tag=Glib_Pathfind,tag=!Glib_Pathfind_Rewind,distance=0.1..1.5] add Glib_Pathfind_Rewind_Check


scoreboard players operation @s glib.var2 > @e[tag=Glib_Pathfind_Rewind_Check] PathCost
scoreboard players operation @s glib.var2 < @e[tag=Glib_Pathfind_Rewind_Check] PathCost

execute as @e[tag=Glib_Pathfind_Rewind_Check] if score @s PathCost = @e[tag=Glib_Pathfind_Rewind_Head,limit=1] glib.var2 run tag @s add Glib_Pathfind_Rewind_Head


tag @s remove Glib_Pathfind_Rewind_Head
tag @e remove Glib_Pathfind_Rewind_Check

execute at @e[tag=Glib_Pathfind_Source] at @e[tag=Glib_Pathfind_Rewind_Head,limit=1,sort=nearest] run tag @e[tag=Glib_Pathfind_Rewind_Head,distance=0.1..] remove Glib_Pathfind_Rewind_Head


data merge entity @s {ArmorItems:[{},{},{},{id:"redstone_block",Count:1b}]}

execute unless entity @e[tag=Glib_Pathfind_Source,distance=..1.5] as @e[tag=Glib_Pathfind_Rewind_Head] at @s run function glib_child:default/move/pathfind/loop_get_path