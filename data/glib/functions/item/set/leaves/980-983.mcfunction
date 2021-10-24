execute if score @s glib.itemId matches 980 run summon item ~ ~ ~ {Item:{id:"minecraft:suspicious_stew",Count:1b}}
execute if score @s glib.itemId matches 981 run summon item ~ ~ ~ {Item:{id:"minecraft:sweet_berries",Count:1b}}
execute if score @s glib.itemId matches 982 run summon item ~ ~ ~ {Item:{id:"minecraft:tall_grass",Count:1b}}
execute if score @s glib.itemId matches 983 run summon item ~ ~ ~ {Item:{id:"minecraft:target",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
