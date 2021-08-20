execute if score @s glib.itemId matches 826 run summon item ~ ~ ~ {Item:{id:"minecraft:red_bed",Count:1b}}
execute if score @s glib.itemId matches 827 run summon item ~ ~ ~ {Item:{id:"minecraft:red_candle",Count:1b}}
execute if score @s glib.itemId matches 828 run summon item ~ ~ ~ {Item:{id:"minecraft:red_carpet",Count:1b}}
execute if score @s glib.itemId matches 829 run summon item ~ ~ ~ {Item:{id:"minecraft:red_concrete",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
