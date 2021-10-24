execute if score @s glib.itemId matches 338 run summon item ~ ~ ~ {Item:{id:"minecraft:dragon_breath",Count:1b}}
execute if score @s glib.itemId matches 339 run summon item ~ ~ ~ {Item:{id:"minecraft:dragon_egg",Count:1b}}
execute if score @s glib.itemId matches 340 run summon item ~ ~ ~ {Item:{id:"minecraft:dragon_head",Count:1b}}
execute if score @s glib.itemId matches 341 run summon item ~ ~ ~ {Item:{id:"minecraft:dried_kelp",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
