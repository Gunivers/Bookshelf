execute if score @s glib.itemId matches 252 run summon item ~ ~ ~ {"Item":{"id":"minecraft:cyan_concrete_powder","Count":1b}}
execute if score @s glib.itemId matches 253 run summon item ~ ~ ~ {"Item":{"id":"minecraft:cyan_dye","Count":1b}}
execute if score @s glib.itemId matches 254 run summon item ~ ~ ~ {"Item":{"id":"minecraft:cyan_glazed_terracotta","Count":1b}}
execute if score @s glib.itemId matches 255 run summon item ~ ~ ~ {"Item":{"id":"minecraft:cyan_shulker_box","Count":1b}}
execute if score @s glib.itemId matches 256 run summon item ~ ~ ~ {"Item":{"id":"minecraft:cyan_stained_glass","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
