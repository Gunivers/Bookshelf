execute if score @s glib.itemId matches 116 run summon item ~ ~ ~ {"Item":{"id":"minecraft:brick_slab","Count":1b}}
execute if score @s glib.itemId matches 117 run summon item ~ ~ ~ {"Item":{"id":"minecraft:brick_stairs","Count":1b}}
execute if score @s glib.itemId matches 118 run summon item ~ ~ ~ {"Item":{"id":"minecraft:brick_wall","Count":1b}}
execute if score @s glib.itemId matches 119 run summon item ~ ~ ~ {"Item":{"id":"minecraft:bricks","Count":1b}}
execute if score @s glib.itemId matches 120 run summon item ~ ~ ~ {"Item":{"id":"minecraft:brown_banner","Count":1b}}
execute if score @s glib.itemId matches 121 run summon item ~ ~ ~ {"Item":{"id":"minecraft:brown_bed","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
