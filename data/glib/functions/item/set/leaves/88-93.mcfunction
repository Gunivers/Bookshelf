execute if score @s glib.itemId matches 88 run summon item ~ ~ ~ {Item:{id:"minecraft:blue_banner",Count:1b}}
execute if score @s glib.itemId matches 89 run summon item ~ ~ ~ {Item:{id:"minecraft:blue_bed",Count:1b}}
execute if score @s glib.itemId matches 90 run summon item ~ ~ ~ {Item:{id:"minecraft:blue_candle",Count:1b}}
execute if score @s glib.itemId matches 91 run summon item ~ ~ ~ {Item:{id:"minecraft:blue_carpet",Count:1b}}
execute if score @s glib.itemId matches 92 run summon item ~ ~ ~ {Item:{id:"minecraft:blue_concrete",Count:1b}}
execute if score @s glib.itemId matches 93 run summon item ~ ~ ~ {Item:{id:"minecraft:blue_concrete_powder",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
