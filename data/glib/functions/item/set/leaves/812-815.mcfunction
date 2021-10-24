execute if score @s glib.itemId matches 812 run summon item ~ ~ ~ {Item:{id:"minecraft:rabbit",Count:1b}}
execute if score @s glib.itemId matches 813 run summon item ~ ~ ~ {Item:{id:"minecraft:rabbit_foot",Count:1b}}
execute if score @s glib.itemId matches 814 run summon item ~ ~ ~ {Item:{id:"minecraft:rabbit_hide",Count:1b}}
execute if score @s glib.itemId matches 815 run summon item ~ ~ ~ {Item:{id:"minecraft:rabbit_spawn_egg",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
