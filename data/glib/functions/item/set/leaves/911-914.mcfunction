execute if score @s glib.itemId matches 911 run summon item ~ ~ ~ {Item:{id:"minecraft:soul_lantern",Count:1b}}
execute if score @s glib.itemId matches 912 run summon item ~ ~ ~ {Item:{id:"minecraft:soul_sand",Count:1b}}
execute if score @s glib.itemId matches 913 run summon item ~ ~ ~ {Item:{id:"minecraft:soul_soil",Count:1b}}
execute if score @s glib.itemId matches 914 run summon item ~ ~ ~ {Item:{id:"minecraft:soul_torch",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
