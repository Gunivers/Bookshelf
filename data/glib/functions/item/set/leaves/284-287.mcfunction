execute if score @s glib.itemId matches 284 run summon item ~ ~ ~ {Item:{id:"minecraft:dead_bubble_coral",Count:1b}}
execute if score @s glib.itemId matches 285 run summon item ~ ~ ~ {Item:{id:"minecraft:dead_bubble_coral_block",Count:1b}}
execute if score @s glib.itemId matches 286 run summon item ~ ~ ~ {Item:{id:"minecraft:dead_bubble_coral_fan",Count:1b}}
execute if score @s glib.itemId matches 287 run summon item ~ ~ ~ {Item:{id:"minecraft:dead_bush",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
