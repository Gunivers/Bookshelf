execute if score @s glib.itemId matches 450 run summon item ~ ~ ~ {Item:{id:"minecraft:green_candle",Count:1b}}
execute if score @s glib.itemId matches 451 run summon item ~ ~ ~ {Item:{id:"minecraft:green_carpet",Count:1b}}
execute if score @s glib.itemId matches 452 run summon item ~ ~ ~ {Item:{id:"minecraft:green_concrete",Count:1b}}
execute if score @s glib.itemId matches 453 run summon item ~ ~ ~ {Item:{id:"minecraft:green_concrete_powder",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
