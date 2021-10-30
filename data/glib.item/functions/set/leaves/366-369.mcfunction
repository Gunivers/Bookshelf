execute if score @s glib.itemId matches 366 run summon item ~ ~ ~ {Item:{id:"minecraft:enderman_spawn_egg",Count:1b}}
execute if score @s glib.itemId matches 367 run summon item ~ ~ ~ {Item:{id:"minecraft:endermite_spawn_egg",Count:1b}}
execute if score @s glib.itemId matches 368 run summon item ~ ~ ~ {Item:{id:"minecraft:evoker_spawn_egg",Count:1b}}
execute if score @s glib.itemId matches 369 run summon item ~ ~ ~ {Item:{id:"minecraft:experience_bottle",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
