execute if score @s glib.itemId matches 156 run summon item ~ ~ ~ {"Item":{"id":"minecraft:chainmail_chestplate","Count":1b}}
execute if score @s glib.itemId matches 157 run summon item ~ ~ ~ {"Item":{"id":"minecraft:chainmail_helmet","Count":1b}}
execute if score @s glib.itemId matches 158 run summon item ~ ~ ~ {"Item":{"id":"minecraft:chainmail_leggings","Count":1b}}
execute if score @s glib.itemId matches 159 run summon item ~ ~ ~ {"Item":{"id":"minecraft:charcoal","Count":1b}}
execute if score @s glib.itemId matches 160 run summon item ~ ~ ~ {"Item":{"id":"minecraft:chest","Count":1b}}
execute if score @s glib.itemId matches 161 run summon item ~ ~ ~ {"Item":{"id":"minecraft:chest_minecart","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
