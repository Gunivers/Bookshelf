execute if score @s glib.itemId matches 545 run summon item ~ ~ ~ {Item:{id:"minecraft:light_blue_banner",Count:1b}}
execute if score @s glib.itemId matches 546 run summon item ~ ~ ~ {Item:{id:"minecraft:light_blue_bed",Count:1b}}
execute if score @s glib.itemId matches 547 run summon item ~ ~ ~ {Item:{id:"minecraft:light_blue_candle",Count:1b}}
execute if score @s glib.itemId matches 548 run summon item ~ ~ ~ {Item:{id:"minecraft:light_blue_carpet",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
