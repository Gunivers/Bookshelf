execute if score @s glib.itemId matches 57 run summon item ~ ~ ~ {Item:{id:"minecraft:birch_leaves",Count:1b}}
execute if score @s glib.itemId matches 58 run summon item ~ ~ ~ {Item:{id:"minecraft:birch_log",Count:1b}}
execute if score @s glib.itemId matches 59 run summon item ~ ~ ~ {Item:{id:"minecraft:birch_planks",Count:1b}}
execute if score @s glib.itemId matches 60 run summon item ~ ~ ~ {Item:{id:"minecraft:birch_pressure_plate",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
