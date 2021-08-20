execute if score @s glib.itemId matches 1084 run summon item ~ ~ ~ {Item:{id:"minecraft:yellow_concrete_powder",Count:1b}}
execute if score @s glib.itemId matches 1085 run summon item ~ ~ ~ {Item:{id:"minecraft:yellow_dye",Count:1b}}
execute if score @s glib.itemId matches 1086 run summon item ~ ~ ~ {Item:{id:"minecraft:yellow_glazed_terracotta",Count:1b}}
execute if score @s glib.itemId matches 1087 run summon item ~ ~ ~ {Item:{id:"minecraft:yellow_shulker_box",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
