execute if score @s glib.itemId matches 44 run summon item ~ ~ ~ {"Item":{"id":"minecraft:bee_spawn_egg","Count":1b}}
execute if score @s glib.itemId matches 45 run summon item ~ ~ ~ {"Item":{"id":"minecraft:beef","Count":1b}}
execute if score @s glib.itemId matches 46 run summon item ~ ~ ~ {"Item":{"id":"minecraft:beehive","Count":1b}}
execute if score @s glib.itemId matches 47 run summon item ~ ~ ~ {"Item":{"id":"minecraft:beetroot","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
