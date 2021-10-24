execute if score @s glib.itemId matches 694 run summon item ~ ~ ~ {Item:{id:"minecraft:orange_concrete",Count:1b}}
execute if score @s glib.itemId matches 695 run summon item ~ ~ ~ {Item:{id:"minecraft:orange_concrete_powder",Count:1b}}
execute if score @s glib.itemId matches 696 run summon item ~ ~ ~ {Item:{id:"minecraft:orange_dye",Count:1b}}
execute if score @s glib.itemId matches 697 run summon item ~ ~ ~ {Item:{id:"minecraft:orange_glazed_terracotta",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
