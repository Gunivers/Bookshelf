execute if score @s glib.itemId matches 1088 run summon item ~ ~ ~ {Item:{id:"minecraft:yellow_stained_glass",Count:1b}}
execute if score @s glib.itemId matches 1089 run summon item ~ ~ ~ {Item:{id:"minecraft:yellow_stained_glass_pane",Count:1b}}
execute if score @s glib.itemId matches 1090 run summon item ~ ~ ~ {Item:{id:"minecraft:yellow_terracotta",Count:1b}}
execute if score @s glib.itemId matches 1091 run summon item ~ ~ ~ {Item:{id:"minecraft:yellow_wool",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
