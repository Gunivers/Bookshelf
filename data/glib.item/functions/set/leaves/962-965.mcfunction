execute if score @s glib.itemId matches 962 run summon item ~ ~ ~ {Item:{id:"minecraft:stripped_birch_wood",Count:1b}}
execute if score @s glib.itemId matches 963 run summon item ~ ~ ~ {Item:{id:"minecraft:stripped_crimson_hyphae",Count:1b}}
execute if score @s glib.itemId matches 964 run summon item ~ ~ ~ {Item:{id:"minecraft:stripped_crimson_stem",Count:1b}}
execute if score @s glib.itemId matches 965 run summon item ~ ~ ~ {Item:{id:"minecraft:stripped_dark_oak_log",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
