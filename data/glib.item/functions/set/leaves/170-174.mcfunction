execute if score @s glib.itemId matches 170 run summon item ~ ~ ~ {"Item":{"id":"minecraft:chiseled_sandstone","Count":1b}}
execute if score @s glib.itemId matches 171 run summon item ~ ~ ~ {"Item":{"id":"minecraft:chiseled_stone_bricks","Count":1b}}
execute if score @s glib.itemId matches 172 run summon item ~ ~ ~ {"Item":{"id":"minecraft:chorus_flower","Count":1b}}
execute if score @s glib.itemId matches 173 run summon item ~ ~ ~ {"Item":{"id":"minecraft:chorus_fruit","Count":1b}}
execute if score @s glib.itemId matches 174 run summon item ~ ~ ~ {"Item":{"id":"minecraft:chorus_plant","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
