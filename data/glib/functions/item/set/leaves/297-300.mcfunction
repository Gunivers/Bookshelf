execute if score @s glib.itemId matches 297 run summon item ~ ~ ~ {Item:{id:"minecraft:debug_stick",Count:1b}}
execute if score @s glib.itemId matches 298 run summon item ~ ~ ~ {Item:{id:"minecraft:deepslate",Count:1b}}
execute if score @s glib.itemId matches 299 run summon item ~ ~ ~ {Item:{id:"minecraft:deepslate_brick_slab",Count:1b}}
execute if score @s glib.itemId matches 300 run summon item ~ ~ ~ {Item:{id:"minecraft:deepslate_brick_stairs",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
