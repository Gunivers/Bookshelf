execute if score @s glib.itemId matches 94 run summon item ~ ~ ~ {Item:{id:"minecraft:blue_dye",Count:1b}}
execute if score @s glib.itemId matches 95 run summon item ~ ~ ~ {Item:{id:"minecraft:blue_glazed_terracotta",Count:1b}}
execute if score @s glib.itemId matches 96 run summon item ~ ~ ~ {Item:{id:"minecraft:blue_ice",Count:1b}}
execute if score @s glib.itemId matches 97 run summon item ~ ~ ~ {Item:{id:"minecraft:blue_orchid",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
