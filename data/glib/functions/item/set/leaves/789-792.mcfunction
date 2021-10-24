execute if score @s glib.itemId matches 789 run summon item ~ ~ ~ {Item:{id:"minecraft:purple_banner",Count:1b}}
execute if score @s glib.itemId matches 790 run summon item ~ ~ ~ {Item:{id:"minecraft:purple_bed",Count:1b}}
execute if score @s glib.itemId matches 791 run summon item ~ ~ ~ {Item:{id:"minecraft:purple_candle",Count:1b}}
execute if score @s glib.itemId matches 792 run summon item ~ ~ ~ {Item:{id:"minecraft:purple_carpet",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
