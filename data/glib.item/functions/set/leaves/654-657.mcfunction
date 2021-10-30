execute if score @s glib.itemId matches 654 run summon item ~ ~ ~ {Item:{id:"minecraft:nether_sprouts",Count:1b}}
execute if score @s glib.itemId matches 655 run summon item ~ ~ ~ {Item:{id:"minecraft:nether_star",Count:1b}}
execute if score @s glib.itemId matches 656 run summon item ~ ~ ~ {Item:{id:"minecraft:nether_wart",Count:1b}}
execute if score @s glib.itemId matches 657 run summon item ~ ~ ~ {Item:{id:"minecraft:nether_wart_block",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
