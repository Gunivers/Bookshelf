execute if score @s glib.itemId matches 568 run summon item ~ ~ ~ {Item:{id:"minecraft:light_gray_stained_glass_pane",Count:1b}}
execute if score @s glib.itemId matches 569 run summon item ~ ~ ~ {Item:{id:"minecraft:light_gray_terracotta",Count:1b}}
execute if score @s glib.itemId matches 570 run summon item ~ ~ ~ {Item:{id:"minecraft:light_gray_wool",Count:1b}}
execute if score @s glib.itemId matches 571 run summon item ~ ~ ~ {Item:{id:"minecraft:light_weighted_pressure_plate",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
