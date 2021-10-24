execute if score @s glib.itemId matches 292 run summon item ~ ~ ~ {Item:{id:"minecraft:dead_horn_coral_block",Count:1b}}
execute if score @s glib.itemId matches 293 run summon item ~ ~ ~ {Item:{id:"minecraft:dead_horn_coral_fan",Count:1b}}
execute if score @s glib.itemId matches 294 run summon item ~ ~ ~ {Item:{id:"minecraft:dead_tube_coral",Count:1b}}
execute if score @s glib.itemId matches 295 run summon item ~ ~ ~ {Item:{id:"minecraft:dead_tube_coral_block",Count:1b}}
execute if score @s glib.itemId matches 296 run summon item ~ ~ ~ {Item:{id:"minecraft:dead_tube_coral_fan",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
