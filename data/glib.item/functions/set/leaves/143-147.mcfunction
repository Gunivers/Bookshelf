execute if score @s glib.itemId matches 143 run summon item ~ ~ ~ {"Item":{"id":"minecraft:calcite","Count":1b}}
execute if score @s glib.itemId matches 144 run summon item ~ ~ ~ {"Item":{"id":"minecraft:campfire","Count":1b}}
execute if score @s glib.itemId matches 145 run summon item ~ ~ ~ {"Item":{"id":"minecraft:candle","Count":1b}}
execute if score @s glib.itemId matches 146 run summon item ~ ~ ~ {"Item":{"id":"minecraft:carrot","Count":1b}}
execute if score @s glib.itemId matches 147 run summon item ~ ~ ~ {"Item":{"id":"minecraft:carrot_on_a_stick","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
