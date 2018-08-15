tag @s add Glib_Pathfind_Rewind
tag @e remove Glib_Pathfind_Rewind_Head


execute positioned ~ ~-1 ~ run tag @e[tag=Glib_Pathfind,distance=0.1..1.1] add Glib_Pathfind_Rewind_Check
execute positioned ~ ~ ~ run tag @e[tag=Glib_Pathfind,distance=0.1..1.1] add Glib_Pathfind_Rewind_Check
execute positioned ~ ~1 ~ run tag @e[tag=Glib_Pathfind,distance=0.1..1.1] add Glib_Pathfind_Rewind_Check


scoreboard players operation @s Var3 > @e[tag=Glib_Pathfind_Rewind_Check] PathCost
scoreboard players operation @s Var3 < @e[tag=Glib_Pathfind_Rewind_Check] PathCost

tag @s add Glib_Pathfind_Rewind_Tmp
execute as @e[tag=Glib_Pathfind_Rewind_Check] if score @s PathCost = @e[tag=Glib_Pathfind_Rewind_Tmp,limit=1] Var3 run tag @s add Glib_Pathfind_Rewind_Head
tag @s remove Glib_Pathfind_Rewind_Tmp
tag @s remove Glib_Pathfind_Rewind_Head
tag @e remove Glib_Pathfind_Rewind_Check

effect give @e[tag=Glib_Pathfind_Rewind_Head] minecraft:glowing 1 1 true
data merge entity @s {ArmorItems:[{},{},{},{id:"redstone_block",Count:1b}]}

execute at @e[tag=Glib_Pathfind_Source] as @e[tag=Glib_Pathfind_Rewind_Head,limit=1,sort=nearest,distance=0.1..] at @s run function gunivers-lib:entity/move/child/pathfind/loop_get_path