execute if score @s glib.itemId matches 1029 run summon item ~ ~ ~ {Item:{id:"minecraft:waxed_copper_block",Count:1b}}
execute if score @s glib.itemId matches 1030 run summon item ~ ~ ~ {Item:{id:"minecraft:waxed_cut_copper",Count:1b}}
execute if score @s glib.itemId matches 1031 run summon item ~ ~ ~ {Item:{id:"minecraft:waxed_cut_copper_slab",Count:1b}}
execute if score @s glib.itemId matches 1032 run summon item ~ ~ ~ {Item:{id:"minecraft:waxed_cut_copper_stairs",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
