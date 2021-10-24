execute if score @s glib.itemId matches 1078 run summon item ~ ~ ~ {Item:{id:"minecraft:written_book",Count:1b}}
execute if score @s glib.itemId matches 1079 run summon item ~ ~ ~ {Item:{id:"minecraft:yellow_banner",Count:1b}}
execute if score @s glib.itemId matches 1080 run summon item ~ ~ ~ {Item:{id:"minecraft:yellow_bed",Count:1b}}
execute if score @s glib.itemId matches 1081 run summon item ~ ~ ~ {Item:{id:"minecraft:yellow_candle",Count:1b}}
execute if score @s glib.itemId matches 1082 run summon item ~ ~ ~ {Item:{id:"minecraft:yellow_carpet",Count:1b}}
execute if score @s glib.itemId matches 1083 run summon item ~ ~ ~ {Item:{id:"minecraft:yellow_concrete",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
