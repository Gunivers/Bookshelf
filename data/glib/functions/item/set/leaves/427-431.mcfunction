execute if score @s glib.itemId matches 427 run summon item ~ ~ ~ {Item:{id:"minecraft:golden_sword",Count:1b}}
execute if score @s glib.itemId matches 428 run summon item ~ ~ ~ {Item:{id:"minecraft:granite",Count:1b}}
execute if score @s glib.itemId matches 429 run summon item ~ ~ ~ {Item:{id:"minecraft:granite_slab",Count:1b}}
execute if score @s glib.itemId matches 430 run summon item ~ ~ ~ {Item:{id:"minecraft:granite_stairs",Count:1b}}
execute if score @s glib.itemId matches 431 run summon item ~ ~ ~ {Item:{id:"minecraft:granite_wall",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
