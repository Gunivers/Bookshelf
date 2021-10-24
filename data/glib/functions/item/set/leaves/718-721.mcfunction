execute if score @s glib.itemId matches 718 run summon item ~ ~ ~ {Item:{id:"minecraft:pig_spawn_egg",Count:1b}}
execute if score @s glib.itemId matches 719 run summon item ~ ~ ~ {Item:{id:"minecraft:piglin_banner_pattern",Count:1b}}
execute if score @s glib.itemId matches 720 run summon item ~ ~ ~ {Item:{id:"minecraft:piglin_brute_spawn_egg",Count:1b}}
execute if score @s glib.itemId matches 721 run summon item ~ ~ ~ {Item:{id:"minecraft:piglin_spawn_egg",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
