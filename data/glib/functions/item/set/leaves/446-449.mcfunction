execute if score @s glib.itemId matches 446 run summon item ~ ~ ~ {Item:{id:"minecraft:gray_terracotta",Count:1b}}
execute if score @s glib.itemId matches 447 run summon item ~ ~ ~ {Item:{id:"minecraft:gray_wool",Count:1b}}
execute if score @s glib.itemId matches 448 run summon item ~ ~ ~ {Item:{id:"minecraft:green_banner",Count:1b}}
execute if score @s glib.itemId matches 449 run summon item ~ ~ ~ {Item:{id:"minecraft:green_bed",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
