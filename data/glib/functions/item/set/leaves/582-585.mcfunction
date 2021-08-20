execute if score @s glib.itemId matches 582 run summon item ~ ~ ~ {Item:{id:"minecraft:lime_dye",Count:1b}}
execute if score @s glib.itemId matches 583 run summon item ~ ~ ~ {Item:{id:"minecraft:lime_glazed_terracotta",Count:1b}}
execute if score @s glib.itemId matches 584 run summon item ~ ~ ~ {Item:{id:"minecraft:lime_shulker_box",Count:1b}}
execute if score @s glib.itemId matches 585 run summon item ~ ~ ~ {Item:{id:"minecraft:lime_stained_glass",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
