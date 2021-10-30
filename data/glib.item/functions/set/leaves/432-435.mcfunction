execute if score @s glib.itemId matches 432 run summon item ~ ~ ~ {Item:{id:"minecraft:grass",Count:1b}}
execute if score @s glib.itemId matches 433 run summon item ~ ~ ~ {Item:{id:"minecraft:grass_block",Count:1b}}
execute if score @s glib.itemId matches 434 run summon item ~ ~ ~ {Item:{id:"minecraft:gravel",Count:1b}}
execute if score @s glib.itemId matches 435 run summon item ~ ~ ~ {Item:{id:"minecraft:gray_banner",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
