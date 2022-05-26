execute if score @s glib.itemId matches 224 run summon item ~ ~ ~ {"Item":{"id":"minecraft:crimson_door","Count":1b}}
execute if score @s glib.itemId matches 225 run summon item ~ ~ ~ {"Item":{"id":"minecraft:crimson_fence","Count":1b}}
execute if score @s glib.itemId matches 226 run summon item ~ ~ ~ {"Item":{"id":"minecraft:crimson_fence_gate","Count":1b}}
execute if score @s glib.itemId matches 227 run summon item ~ ~ ~ {"Item":{"id":"minecraft:crimson_fungus","Count":1b}}
execute if score @s glib.itemId matches 228 run summon item ~ ~ ~ {"Item":{"id":"minecraft:crimson_hyphae","Count":1b}}
execute if score @s glib.itemId matches 229 run summon item ~ ~ ~ {"Item":{"id":"minecraft:crimson_nylium","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
