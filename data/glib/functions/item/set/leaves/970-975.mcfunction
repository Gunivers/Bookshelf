execute if score @s glib.itemId matches 970 run summon item ~ ~ ~ {Item:{id:"minecraft:stripped_oak_wood",Count:1b}}
execute if score @s glib.itemId matches 971 run summon item ~ ~ ~ {Item:{id:"minecraft:stripped_spruce_log",Count:1b}}
execute if score @s glib.itemId matches 972 run summon item ~ ~ ~ {Item:{id:"minecraft:stripped_spruce_wood",Count:1b}}
execute if score @s glib.itemId matches 973 run summon item ~ ~ ~ {Item:{id:"minecraft:stripped_warped_hyphae",Count:1b}}
execute if score @s glib.itemId matches 974 run summon item ~ ~ ~ {Item:{id:"minecraft:stripped_warped_stem",Count:1b}}
execute if score @s glib.itemId matches 975 run summon item ~ ~ ~ {Item:{id:"minecraft:structure_block",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
