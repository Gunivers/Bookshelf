execute if score @s glib.itemId matches 1070 run summon item ~ ~ ~ {Item:{id:"minecraft:wither_skeleton_spawn_egg",Count:1b}}
execute if score @s glib.itemId matches 1071 run summon item ~ ~ ~ {Item:{id:"minecraft:wolf_spawn_egg",Count:1b}}
execute if score @s glib.itemId matches 1072 run summon item ~ ~ ~ {Item:{id:"minecraft:wooden_axe",Count:1b}}
execute if score @s glib.itemId matches 1073 run summon item ~ ~ ~ {Item:{id:"minecraft:wooden_hoe",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
