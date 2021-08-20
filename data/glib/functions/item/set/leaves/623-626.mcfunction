execute if score @s glib.itemId matches 623 run summon item ~ ~ ~ {Item:{id:"minecraft:mossy_cobblestone_wall",Count:1b}}
execute if score @s glib.itemId matches 624 run summon item ~ ~ ~ {Item:{id:"minecraft:mossy_stone_brick_slab",Count:1b}}
execute if score @s glib.itemId matches 625 run summon item ~ ~ ~ {Item:{id:"minecraft:mossy_stone_brick_stairs",Count:1b}}
execute if score @s glib.itemId matches 626 run summon item ~ ~ ~ {Item:{id:"minecraft:mossy_stone_brick_wall",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
