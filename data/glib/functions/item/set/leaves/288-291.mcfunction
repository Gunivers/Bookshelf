execute if score @s glib.itemId matches 288 run summon item ~ ~ ~ {Item:{id:"minecraft:dead_fire_coral",Count:1b}}
execute if score @s glib.itemId matches 289 run summon item ~ ~ ~ {Item:{id:"minecraft:dead_fire_coral_block",Count:1b}}
execute if score @s glib.itemId matches 290 run summon item ~ ~ ~ {Item:{id:"minecraft:dead_fire_coral_fan",Count:1b}}
execute if score @s glib.itemId matches 291 run summon item ~ ~ ~ {Item:{id:"minecraft:dead_horn_coral",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
