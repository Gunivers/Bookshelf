execute if score @s glib.itemId matches 1042 run summon item ~ ~ ~ {Item:{id:"minecraft:waxed_weathered_cut_copper",Count:1b}}
execute if score @s glib.itemId matches 1043 run summon item ~ ~ ~ {Item:{id:"minecraft:waxed_weathered_cut_copper_slab",Count:1b}}
execute if score @s glib.itemId matches 1044 run summon item ~ ~ ~ {Item:{id:"minecraft:waxed_weathered_cut_copper_stairs",Count:1b}}
execute if score @s glib.itemId matches 1045 run summon item ~ ~ ~ {Item:{id:"minecraft:weathered_copper",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
