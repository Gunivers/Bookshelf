execute if score @s glib.itemId matches 1050 run summon item ~ ~ ~ {Item:{id:"minecraft:wet_sponge",Count:1b}}
execute if score @s glib.itemId matches 1051 run summon item ~ ~ ~ {Item:{id:"minecraft:wheat",Count:1b}}
execute if score @s glib.itemId matches 1052 run summon item ~ ~ ~ {Item:{id:"minecraft:wheat_seeds",Count:1b}}
execute if score @s glib.itemId matches 1053 run summon item ~ ~ ~ {Item:{id:"minecraft:white_banner",Count:1b}}
execute if score @s glib.itemId matches 1054 run summon item ~ ~ ~ {Item:{id:"minecraft:white_bed",Count:1b}}
execute if score @s glib.itemId matches 1055 run summon item ~ ~ ~ {Item:{id:"minecraft:white_candle",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
