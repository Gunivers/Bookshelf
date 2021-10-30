execute if score @s glib.itemId matches 396 run summon item ~ ~ ~ {Item:{id:"minecraft:ghast_spawn_egg",Count:1b}}
execute if score @s glib.itemId matches 397 run summon item ~ ~ ~ {Item:{id:"minecraft:ghast_tear",Count:1b}}
execute if score @s glib.itemId matches 398 run summon item ~ ~ ~ {Item:{id:"minecraft:gilded_blackstone",Count:1b}}
execute if score @s glib.itemId matches 399 run summon item ~ ~ ~ {Item:{id:"minecraft:glass",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
