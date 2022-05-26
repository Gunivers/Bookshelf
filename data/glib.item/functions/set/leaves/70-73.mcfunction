execute if score @s glib.itemId matches 70 run summon item ~ ~ ~ {"Item":{"id":"minecraft:black_carpet","Count":1b}}
execute if score @s glib.itemId matches 71 run summon item ~ ~ ~ {"Item":{"id":"minecraft:black_concrete","Count":1b}}
execute if score @s glib.itemId matches 72 run summon item ~ ~ ~ {"Item":{"id":"minecraft:black_concrete_powder","Count":1b}}
execute if score @s glib.itemId matches 73 run summon item ~ ~ ~ {"Item":{"id":"minecraft:black_dye","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
