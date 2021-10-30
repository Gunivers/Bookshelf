execute if score @s glib.itemId matches 436 run summon item ~ ~ ~ {Item:{id:"minecraft:gray_bed",Count:1b}}
execute if score @s glib.itemId matches 437 run summon item ~ ~ ~ {Item:{id:"minecraft:gray_candle",Count:1b}}
execute if score @s glib.itemId matches 438 run summon item ~ ~ ~ {Item:{id:"minecraft:gray_carpet",Count:1b}}
execute if score @s glib.itemId matches 439 run summon item ~ ~ ~ {Item:{id:"minecraft:gray_concrete",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
