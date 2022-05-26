execute if score @s glib.itemId matches 230 run summon item ~ ~ ~ {"Item":{"id":"minecraft:crimson_planks","Count":1b}}
execute if score @s glib.itemId matches 231 run summon item ~ ~ ~ {"Item":{"id":"minecraft:crimson_pressure_plate","Count":1b}}
execute if score @s glib.itemId matches 232 run summon item ~ ~ ~ {"Item":{"id":"minecraft:crimson_roots","Count":1b}}
execute if score @s glib.itemId matches 233 run summon item ~ ~ ~ {"Item":{"id":"minecraft:crimson_sign","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
