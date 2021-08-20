execute if score @s glib.itemId matches 518 run summon item ~ ~ ~ {Item:{id:"minecraft:jungle_pressure_plate",Count:1b}}
execute if score @s glib.itemId matches 519 run summon item ~ ~ ~ {Item:{id:"minecraft:jungle_sapling",Count:1b}}
execute if score @s glib.itemId matches 520 run summon item ~ ~ ~ {Item:{id:"minecraft:jungle_sign",Count:1b}}
execute if score @s glib.itemId matches 521 run summon item ~ ~ ~ {Item:{id:"minecraft:jungle_slab",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
