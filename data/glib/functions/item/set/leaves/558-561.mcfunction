execute if score @s glib.itemId matches 558 run summon item ~ ~ ~ {Item:{id:"minecraft:light_gray_banner",Count:1b}}
execute if score @s glib.itemId matches 559 run summon item ~ ~ ~ {Item:{id:"minecraft:light_gray_bed",Count:1b}}
execute if score @s glib.itemId matches 560 run summon item ~ ~ ~ {Item:{id:"minecraft:light_gray_candle",Count:1b}}
execute if score @s glib.itemId matches 561 run summon item ~ ~ ~ {Item:{id:"minecraft:light_gray_carpet",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
