execute if score @s glib.itemId matches 830 run summon item ~ ~ ~ {Item:{id:"minecraft:red_concrete_powder",Count:1b}}
execute if score @s glib.itemId matches 831 run summon item ~ ~ ~ {Item:{id:"minecraft:red_dye",Count:1b}}
execute if score @s glib.itemId matches 832 run summon item ~ ~ ~ {Item:{id:"minecraft:red_glazed_terracotta",Count:1b}}
execute if score @s glib.itemId matches 833 run summon item ~ ~ ~ {Item:{id:"minecraft:red_mushroom",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
