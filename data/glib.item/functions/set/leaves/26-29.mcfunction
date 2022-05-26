execute if score @s glib.itemId matches 26 run summon item ~ ~ ~ {"Item":{"id":"minecraft:anvil","Count":1b}}
execute if score @s glib.itemId matches 27 run summon item ~ ~ ~ {"Item":{"id":"minecraft:apple","Count":1b}}
execute if score @s glib.itemId matches 28 run summon item ~ ~ ~ {"Item":{"id":"minecraft:armor_stand","Count":1b}}
execute if score @s glib.itemId matches 29 run summon item ~ ~ ~ {"Item":{"id":"minecraft:arrow","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
