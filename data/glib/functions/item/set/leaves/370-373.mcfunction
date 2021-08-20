execute if score @s glib.itemId matches 370 run summon item ~ ~ ~ {Item:{id:"minecraft:exposed_copper",Count:1b}}
execute if score @s glib.itemId matches 371 run summon item ~ ~ ~ {Item:{id:"minecraft:exposed_cut_copper",Count:1b}}
execute if score @s glib.itemId matches 372 run summon item ~ ~ ~ {Item:{id:"minecraft:exposed_cut_copper_slab",Count:1b}}
execute if score @s glib.itemId matches 373 run summon item ~ ~ ~ {Item:{id:"minecraft:exposed_cut_copper_stairs",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
