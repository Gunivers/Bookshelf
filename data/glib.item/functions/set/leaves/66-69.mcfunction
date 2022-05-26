execute if score @s glib.itemId matches 66 run summon item ~ ~ ~ {"Item":{"id":"minecraft:birch_wood","Count":1b}}
execute if score @s glib.itemId matches 67 run summon item ~ ~ ~ {"Item":{"id":"minecraft:black_banner","Count":1b}}
execute if score @s glib.itemId matches 68 run summon item ~ ~ ~ {"Item":{"id":"minecraft:black_bed","Count":1b}}
execute if score @s glib.itemId matches 69 run summon item ~ ~ ~ {"Item":{"id":"minecraft:black_candle","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
