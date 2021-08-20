execute if score @s glib.itemId matches 1092 run summon item ~ ~ ~ {Item:{id:"minecraft:zoglin_spawn_egg",Count:1b}}
execute if score @s glib.itemId matches 1093 run summon item ~ ~ ~ {Item:{id:"minecraft:zombie_head",Count:1b}}
execute if score @s glib.itemId matches 1094 run summon item ~ ~ ~ {Item:{id:"minecraft:zombie_horse_spawn_egg",Count:1b}}
execute if score @s glib.itemId matches 1095 run summon item ~ ~ ~ {Item:{id:"minecraft:zombie_spawn_egg",Count:1b}}
execute if score @s glib.itemId matches 1096 run summon item ~ ~ ~ {Item:{id:"minecraft:zombie_villager_spawn_egg",Count:1b}}
execute if score @s glib.itemId matches 1097 run summon item ~ ~ ~ {Item:{id:"minecraft:zombified_piglin_spawn_egg",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
