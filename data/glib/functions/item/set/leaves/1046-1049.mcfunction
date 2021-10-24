execute if score @s glib.itemId matches 1046 run summon item ~ ~ ~ {Item:{id:"minecraft:weathered_cut_copper",Count:1b}}
execute if score @s glib.itemId matches 1047 run summon item ~ ~ ~ {Item:{id:"minecraft:weathered_cut_copper_slab",Count:1b}}
execute if score @s glib.itemId matches 1048 run summon item ~ ~ ~ {Item:{id:"minecraft:weathered_cut_copper_stairs",Count:1b}}
execute if score @s glib.itemId matches 1049 run summon item ~ ~ ~ {Item:{id:"minecraft:weeping_vines",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
