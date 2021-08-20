execute if score @s glib.itemId matches 474 run summon item ~ ~ ~ {Item:{id:"minecraft:hopper_minecart",Count:1b}}
execute if score @s glib.itemId matches 475 run summon item ~ ~ ~ {Item:{id:"minecraft:horn_coral",Count:1b}}
execute if score @s glib.itemId matches 476 run summon item ~ ~ ~ {Item:{id:"minecraft:horn_coral_block",Count:1b}}
execute if score @s glib.itemId matches 477 run summon item ~ ~ ~ {Item:{id:"minecraft:horn_coral_fan",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
