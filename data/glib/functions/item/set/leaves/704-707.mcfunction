execute if score @s glib.itemId matches 704 run summon item ~ ~ ~ {Item:{id:"minecraft:oxeye_daisy",Count:1b}}
execute if score @s glib.itemId matches 705 run summon item ~ ~ ~ {Item:{id:"minecraft:oxidized_copper",Count:1b}}
execute if score @s glib.itemId matches 706 run summon item ~ ~ ~ {Item:{id:"minecraft:oxidized_cut_copper",Count:1b}}
execute if score @s glib.itemId matches 707 run summon item ~ ~ ~ {Item:{id:"minecraft:oxidized_cut_copper_slab",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
