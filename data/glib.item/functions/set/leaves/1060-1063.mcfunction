execute if score @s glib.itemId matches 1060 run summon item ~ ~ ~ {"Item":{"id":"minecraft:white_concrete","Count":1b}}
execute if score @s glib.itemId matches 1061 run summon item ~ ~ ~ {"Item":{"id":"minecraft:white_concrete_powder","Count":1b}}
execute if score @s glib.itemId matches 1062 run summon item ~ ~ ~ {"Item":{"id":"minecraft:white_dye","Count":1b}}
execute if score @s glib.itemId matches 1063 run summon item ~ ~ ~ {"Item":{"id":"minecraft:white_glazed_terracotta","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
