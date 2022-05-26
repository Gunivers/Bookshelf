execute if score @s glib.itemId matches 0 run summon item ~ ~ ~ {"Item":{"id":"minecraft:acacia_boat","Count":1b}}
execute if score @s glib.itemId matches 1 run summon item ~ ~ ~ {"Item":{"id":"minecraft:acacia_button","Count":1b}}
execute if score @s glib.itemId matches 2 run summon item ~ ~ ~ {"Item":{"id":"minecraft:acacia_door","Count":1b}}
execute if score @s glib.itemId matches 3 run summon item ~ ~ ~ {"Item":{"id":"minecraft:acacia_fence","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
