execute if score @s glib.itemId matches 816 run summon item ~ ~ ~ {Item:{id:"minecraft:rabbit_stew",Count:1b}}
execute if score @s glib.itemId matches 817 run summon item ~ ~ ~ {Item:{id:"minecraft:rail",Count:1b}}
execute if score @s glib.itemId matches 818 run summon item ~ ~ ~ {Item:{id:"minecraft:ravager_spawn_egg",Count:1b}}
execute if score @s glib.itemId matches 819 run summon item ~ ~ ~ {Item:{id:"minecraft:raw_copper",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
