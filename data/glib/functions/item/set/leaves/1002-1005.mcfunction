execute if score @s glib.itemId matches 1002 run summon item ~ ~ ~ {Item:{id:"minecraft:turtle_egg",Count:1b}}
execute if score @s glib.itemId matches 1003 run summon item ~ ~ ~ {Item:{id:"minecraft:turtle_helmet",Count:1b}}
execute if score @s glib.itemId matches 1004 run summon item ~ ~ ~ {Item:{id:"minecraft:turtle_spawn_egg",Count:1b}}
execute if score @s glib.itemId matches 1005 run summon item ~ ~ ~ {Item:{id:"minecraft:twisting_vines",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
