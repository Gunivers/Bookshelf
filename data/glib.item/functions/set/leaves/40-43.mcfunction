execute if score @s glib.itemId matches 40 run summon item ~ ~ ~ {"Item":{"id":"minecraft:bat_spawn_egg","Count":1b}}
execute if score @s glib.itemId matches 41 run summon item ~ ~ ~ {"Item":{"id":"minecraft:beacon","Count":1b}}
execute if score @s glib.itemId matches 42 run summon item ~ ~ ~ {"Item":{"id":"minecraft:bedrock","Count":1b}}
execute if score @s glib.itemId matches 43 run summon item ~ ~ ~ {"Item":{"id":"minecraft:bee_nest","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
