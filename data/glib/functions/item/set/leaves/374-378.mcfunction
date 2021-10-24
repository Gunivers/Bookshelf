execute if score @s glib.itemId matches 374 run summon item ~ ~ ~ {Item:{id:"minecraft:farmland",Count:1b}}
execute if score @s glib.itemId matches 375 run summon item ~ ~ ~ {Item:{id:"minecraft:feather",Count:1b}}
execute if score @s glib.itemId matches 376 run summon item ~ ~ ~ {Item:{id:"minecraft:fermented_spider_eye",Count:1b}}
execute if score @s glib.itemId matches 377 run summon item ~ ~ ~ {Item:{id:"minecraft:fern",Count:1b}}
execute if score @s glib.itemId matches 378 run summon item ~ ~ ~ {Item:{id:"minecraft:filled_map",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
