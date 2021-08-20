execute if score @s glib.itemId matches 356 run summon item ~ ~ ~ {Item:{id:"minecraft:end_portal_frame",Count:1b}}
execute if score @s glib.itemId matches 357 run summon item ~ ~ ~ {Item:{id:"minecraft:end_rod",Count:1b}}
execute if score @s glib.itemId matches 358 run summon item ~ ~ ~ {Item:{id:"minecraft:end_stone",Count:1b}}
execute if score @s glib.itemId matches 359 run summon item ~ ~ ~ {Item:{id:"minecraft:end_stone_brick_slab",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
