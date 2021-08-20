execute if score @s glib.itemId matches 108 run summon item ~ ~ ~ {Item:{id:"minecraft:bow",Count:1b}}
execute if score @s glib.itemId matches 109 run summon item ~ ~ ~ {Item:{id:"minecraft:bowl",Count:1b}}
execute if score @s glib.itemId matches 110 run summon item ~ ~ ~ {Item:{id:"minecraft:brain_coral",Count:1b}}
execute if score @s glib.itemId matches 111 run summon item ~ ~ ~ {Item:{id:"minecraft:brain_coral_block",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
