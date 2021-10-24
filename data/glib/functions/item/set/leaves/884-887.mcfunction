execute if score @s glib.itemId matches 884 run summon item ~ ~ ~ {Item:{id:"minecraft:skeleton_horse_spawn_egg",Count:1b}}
execute if score @s glib.itemId matches 885 run summon item ~ ~ ~ {Item:{id:"minecraft:skeleton_skull",Count:1b}}
execute if score @s glib.itemId matches 886 run summon item ~ ~ ~ {Item:{id:"minecraft:skeleton_spawn_egg",Count:1b}}
execute if score @s glib.itemId matches 887 run summon item ~ ~ ~ {Item:{id:"minecraft:skull_banner_pattern",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
