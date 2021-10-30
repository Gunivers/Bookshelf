execute if score @s glib.itemId matches 1064 run summon item ~ ~ ~ {Item:{id:"minecraft:white_terracotta",Count:1b}}
execute if score @s glib.itemId matches 1065 run summon item ~ ~ ~ {Item:{id:"minecraft:white_tulip",Count:1b}}
execute if score @s glib.itemId matches 1066 run summon item ~ ~ ~ {Item:{id:"minecraft:white_wool",Count:1b}}
execute if score @s glib.itemId matches 1067 run summon item ~ ~ ~ {Item:{id:"minecraft:witch_spawn_egg",Count:1b}}
execute if score @s glib.itemId matches 1068 run summon item ~ ~ ~ {Item:{id:"minecraft:wither_rose",Count:1b}}
execute if score @s glib.itemId matches 1069 run summon item ~ ~ ~ {Item:{id:"minecraft:wither_skeleton_skull",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
