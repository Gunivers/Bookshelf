execute if score @s glib.itemId matches 196 run summon item ~ ~ ~ {"Item":{"id":"minecraft:command_block_minecart","Count":1b}}
execute if score @s glib.itemId matches 197 run summon item ~ ~ ~ {"Item":{"id":"minecraft:comparator","Count":1b}}
execute if score @s glib.itemId matches 198 run summon item ~ ~ ~ {"Item":{"id":"minecraft:compass","Count":1b}}
execute if score @s glib.itemId matches 199 run summon item ~ ~ ~ {"Item":{"id":"minecraft:composter","Count":1b}}
execute if score @s glib.itemId matches 200 run summon item ~ ~ ~ {"Item":{"id":"minecraft:conduit","Count":1b}}
execute if score @s glib.itemId matches 201 run summon item ~ ~ ~ {"Item":{"id":"minecraft:cooked_beef","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
