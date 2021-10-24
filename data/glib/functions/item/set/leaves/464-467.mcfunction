execute if score @s glib.itemId matches 464 run summon item ~ ~ ~ {Item:{id:"minecraft:hanging_roots",Count:1b}}
execute if score @s glib.itemId matches 465 run summon item ~ ~ ~ {Item:{id:"minecraft:hay_block",Count:1b}}
execute if score @s glib.itemId matches 466 run summon item ~ ~ ~ {Item:{id:"minecraft:heart_of_the_sea",Count:1b}}
execute if score @s glib.itemId matches 467 run summon item ~ ~ ~ {Item:{id:"minecraft:heavy_weighted_pressure_plate",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
