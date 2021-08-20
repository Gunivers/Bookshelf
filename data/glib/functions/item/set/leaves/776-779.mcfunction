execute if score @s glib.itemId matches 776 run summon item ~ ~ ~ {Item:{id:"minecraft:prismarine_brick_stairs",Count:1b}}
execute if score @s glib.itemId matches 777 run summon item ~ ~ ~ {Item:{id:"minecraft:prismarine_bricks",Count:1b}}
execute if score @s glib.itemId matches 778 run summon item ~ ~ ~ {Item:{id:"minecraft:prismarine_crystals",Count:1b}}
execute if score @s glib.itemId matches 779 run summon item ~ ~ ~ {Item:{id:"minecraft:prismarine_shard",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
