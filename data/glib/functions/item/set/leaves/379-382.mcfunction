execute if score @s glib.itemId matches 379 run summon item ~ ~ ~ {Item:{id:"minecraft:fire_charge",Count:1b}}
execute if score @s glib.itemId matches 380 run summon item ~ ~ ~ {Item:{id:"minecraft:fire_coral",Count:1b}}
execute if score @s glib.itemId matches 381 run summon item ~ ~ ~ {Item:{id:"minecraft:fire_coral_block",Count:1b}}
execute if score @s glib.itemId matches 382 run summon item ~ ~ ~ {Item:{id:"minecraft:fire_coral_fan",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
