execute if score @s glib.itemId matches 576 run summon item ~ ~ ~ {Item:{id:"minecraft:lime_banner",Count:1b}}
execute if score @s glib.itemId matches 577 run summon item ~ ~ ~ {Item:{id:"minecraft:lime_bed",Count:1b}}
execute if score @s glib.itemId matches 578 run summon item ~ ~ ~ {Item:{id:"minecraft:lime_candle",Count:1b}}
execute if score @s glib.itemId matches 579 run summon item ~ ~ ~ {Item:{id:"minecraft:lime_carpet",Count:1b}}
execute if score @s glib.itemId matches 580 run summon item ~ ~ ~ {Item:{id:"minecraft:lime_concrete",Count:1b}}
execute if score @s glib.itemId matches 581 run summon item ~ ~ ~ {Item:{id:"minecraft:lime_concrete_powder",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
