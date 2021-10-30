execute if score @s glib.itemId matches 871 run summon item ~ ~ ~ {Item:{id:"minecraft:sculk_sensor",Count:1b}}
execute if score @s glib.itemId matches 872 run summon item ~ ~ ~ {Item:{id:"minecraft:scute",Count:1b}}
execute if score @s glib.itemId matches 873 run summon item ~ ~ ~ {Item:{id:"minecraft:sea_lantern",Count:1b}}
execute if score @s glib.itemId matches 874 run summon item ~ ~ ~ {Item:{id:"minecraft:sea_pickle",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
