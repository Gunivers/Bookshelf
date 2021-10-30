execute if score @s glib.itemId matches 1020 run summon item ~ ~ ~ {Item:{id:"minecraft:warped_pressure_plate",Count:1b}}
execute if score @s glib.itemId matches 1021 run summon item ~ ~ ~ {Item:{id:"minecraft:warped_roots",Count:1b}}
execute if score @s glib.itemId matches 1022 run summon item ~ ~ ~ {Item:{id:"minecraft:warped_sign",Count:1b}}
execute if score @s glib.itemId matches 1023 run summon item ~ ~ ~ {Item:{id:"minecraft:warped_slab",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
