execute if score @s glib.itemId matches 4 run summon item ~ ~ ~ {"Item":{"id":"minecraft:acacia_fence_gate","Count":1b}}
execute if score @s glib.itemId matches 5 run summon item ~ ~ ~ {"Item":{"id":"minecraft:acacia_leaves","Count":1b}}
execute if score @s glib.itemId matches 6 run summon item ~ ~ ~ {"Item":{"id":"minecraft:acacia_log","Count":1b}}
execute if score @s glib.itemId matches 7 run summon item ~ ~ ~ {"Item":{"id":"minecraft:acacia_planks","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
