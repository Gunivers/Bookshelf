execute if score @s glib.itemId matches 122 run summon item ~ ~ ~ {"Item":{"id":"minecraft:brown_candle","Count":1b}}
execute if score @s glib.itemId matches 123 run summon item ~ ~ ~ {"Item":{"id":"minecraft:brown_carpet","Count":1b}}
execute if score @s glib.itemId matches 124 run summon item ~ ~ ~ {"Item":{"id":"minecraft:brown_concrete","Count":1b}}
execute if score @s glib.itemId matches 125 run summon item ~ ~ ~ {"Item":{"id":"minecraft:brown_concrete_powder","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
