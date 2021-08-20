execute if score @s glib.itemId matches 880 run summon item ~ ~ ~ {Item:{id:"minecraft:shulker_box",Count:1b}}
execute if score @s glib.itemId matches 881 run summon item ~ ~ ~ {Item:{id:"minecraft:shulker_shell",Count:1b}}
execute if score @s glib.itemId matches 882 run summon item ~ ~ ~ {Item:{id:"minecraft:shulker_spawn_egg",Count:1b}}
execute if score @s glib.itemId matches 883 run summon item ~ ~ ~ {Item:{id:"minecraft:silverfish_spawn_egg",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
