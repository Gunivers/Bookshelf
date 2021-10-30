execute if score @s glib.itemId matches 1006 run summon item ~ ~ ~ {Item:{id:"minecraft:vex_spawn_egg",Count:1b}}
execute if score @s glib.itemId matches 1007 run summon item ~ ~ ~ {Item:{id:"minecraft:villager_spawn_egg",Count:1b}}
execute if score @s glib.itemId matches 1008 run summon item ~ ~ ~ {Item:{id:"minecraft:vindicator_spawn_egg",Count:1b}}
execute if score @s glib.itemId matches 1009 run summon item ~ ~ ~ {Item:{id:"minecraft:vine",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
