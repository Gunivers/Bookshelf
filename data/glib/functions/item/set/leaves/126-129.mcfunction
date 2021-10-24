execute if score @s glib.itemId matches 126 run summon item ~ ~ ~ {Item:{id:"minecraft:brown_dye",Count:1b}}
execute if score @s glib.itemId matches 127 run summon item ~ ~ ~ {Item:{id:"minecraft:brown_glazed_terracotta",Count:1b}}
execute if score @s glib.itemId matches 128 run summon item ~ ~ ~ {Item:{id:"minecraft:brown_mushroom",Count:1b}}
execute if score @s glib.itemId matches 129 run summon item ~ ~ ~ {Item:{id:"minecraft:brown_mushroom_block",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
