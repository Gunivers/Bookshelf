execute if score @s glib.itemId matches 708 run summon item ~ ~ ~ {Item:{id:"minecraft:oxidized_cut_copper_stairs",Count:1b}}
execute if score @s glib.itemId matches 709 run summon item ~ ~ ~ {Item:{id:"minecraft:packed_ice",Count:1b}}
execute if score @s glib.itemId matches 710 run summon item ~ ~ ~ {Item:{id:"minecraft:painting",Count:1b}}
execute if score @s glib.itemId matches 711 run summon item ~ ~ ~ {Item:{id:"minecraft:panda_spawn_egg",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
