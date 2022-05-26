execute if score @s glib.itemId matches 8 run summon item ~ ~ ~ {"Item":{"id":"minecraft:acacia_pressure_plate","Count":1b}}
execute if score @s glib.itemId matches 9 run summon item ~ ~ ~ {"Item":{"id":"minecraft:acacia_sapling","Count":1b}}
execute if score @s glib.itemId matches 10 run summon item ~ ~ ~ {"Item":{"id":"minecraft:acacia_sign","Count":1b}}
execute if score @s glib.itemId matches 11 run summon item ~ ~ ~ {"Item":{"id":"minecraft:acacia_slab","Count":1b}}
execute if score @s glib.itemId matches 12 run summon item ~ ~ ~ {"Item":{"id":"minecraft:acacia_stairs","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
