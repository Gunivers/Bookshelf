execute if score @s glib.itemId matches 501 run summon item ~ ~ ~ {Item:{id:"minecraft:iron_ore",Count:1b}}
execute if score @s glib.itemId matches 502 run summon item ~ ~ ~ {Item:{id:"minecraft:iron_pickaxe",Count:1b}}
execute if score @s glib.itemId matches 503 run summon item ~ ~ ~ {Item:{id:"minecraft:iron_shovel",Count:1b}}
execute if score @s glib.itemId matches 504 run summon item ~ ~ ~ {Item:{id:"minecraft:iron_sword",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
