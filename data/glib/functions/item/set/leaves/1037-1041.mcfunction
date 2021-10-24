execute if score @s glib.itemId matches 1037 run summon item ~ ~ ~ {Item:{id:"minecraft:waxed_oxidized_copper",Count:1b}}
execute if score @s glib.itemId matches 1038 run summon item ~ ~ ~ {Item:{id:"minecraft:waxed_oxidized_cut_copper",Count:1b}}
execute if score @s glib.itemId matches 1039 run summon item ~ ~ ~ {Item:{id:"minecraft:waxed_oxidized_cut_copper_slab",Count:1b}}
execute if score @s glib.itemId matches 1040 run summon item ~ ~ ~ {Item:{id:"minecraft:waxed_oxidized_cut_copper_stairs",Count:1b}}
execute if score @s glib.itemId matches 1041 run summon item ~ ~ ~ {Item:{id:"minecraft:waxed_weathered_copper",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
