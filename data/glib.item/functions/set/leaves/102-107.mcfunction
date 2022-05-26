execute if score @s glib.itemId matches 102 run summon item ~ ~ ~ {"Item":{"id":"minecraft:blue_wool","Count":1b}}
execute if score @s glib.itemId matches 103 run summon item ~ ~ ~ {"Item":{"id":"minecraft:bone","Count":1b}}
execute if score @s glib.itemId matches 104 run summon item ~ ~ ~ {"Item":{"id":"minecraft:bone_block","Count":1b}}
execute if score @s glib.itemId matches 105 run summon item ~ ~ ~ {"Item":{"id":"minecraft:bone_meal","Count":1b}}
execute if score @s glib.itemId matches 106 run summon item ~ ~ ~ {"Item":{"id":"minecraft:book","Count":1b}}
execute if score @s glib.itemId matches 107 run summon item ~ ~ ~ {"Item":{"id":"minecraft:bookshelf","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
