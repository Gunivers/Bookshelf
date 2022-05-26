execute if score @s glib.itemId matches 265 run summon item ~ ~ ~ {"Item":{"id":"minecraft:dark_oak_fence","Count":1b}}
execute if score @s glib.itemId matches 266 run summon item ~ ~ ~ {"Item":{"id":"minecraft:dark_oak_fence_gate","Count":1b}}
execute if score @s glib.itemId matches 267 run summon item ~ ~ ~ {"Item":{"id":"minecraft:dark_oak_leaves","Count":1b}}
execute if score @s glib.itemId matches 268 run summon item ~ ~ ~ {"Item":{"id":"minecraft:dark_oak_log","Count":1b}}
execute if score @s glib.itemId matches 269 run summon item ~ ~ ~ {"Item":{"id":"minecraft:dark_oak_planks","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
