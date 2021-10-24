execute if score @s glib.itemId matches 690 run summon item ~ ~ ~ {Item:{id:"minecraft:orange_banner",Count:1b}}
execute if score @s glib.itemId matches 691 run summon item ~ ~ ~ {Item:{id:"minecraft:orange_bed",Count:1b}}
execute if score @s glib.itemId matches 692 run summon item ~ ~ ~ {Item:{id:"minecraft:orange_candle",Count:1b}}
execute if score @s glib.itemId matches 693 run summon item ~ ~ ~ {Item:{id:"minecraft:orange_carpet",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
