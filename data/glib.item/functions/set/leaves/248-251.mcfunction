execute if score @s glib.itemId matches 248 run summon item ~ ~ ~ {Item:{id:"minecraft:cyan_bed",Count:1b}}
execute if score @s glib.itemId matches 249 run summon item ~ ~ ~ {Item:{id:"minecraft:cyan_candle",Count:1b}}
execute if score @s glib.itemId matches 250 run summon item ~ ~ ~ {Item:{id:"minecraft:cyan_carpet",Count:1b}}
execute if score @s glib.itemId matches 251 run summon item ~ ~ ~ {Item:{id:"minecraft:cyan_concrete",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
