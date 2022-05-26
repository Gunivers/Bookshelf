execute if score @s glib.itemId matches 216 run summon item ~ ~ ~ {"Item":{"id":"minecraft:cracked_nether_bricks","Count":1b}}
execute if score @s glib.itemId matches 217 run summon item ~ ~ ~ {"Item":{"id":"minecraft:cracked_polished_blackstone_bricks","Count":1b}}
execute if score @s glib.itemId matches 218 run summon item ~ ~ ~ {"Item":{"id":"minecraft:cracked_stone_bricks","Count":1b}}
execute if score @s glib.itemId matches 219 run summon item ~ ~ ~ {"Item":{"id":"minecraft:crafting_table","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
