execute if score @s glib.itemId matches 410 run summon item ~ ~ ~ {Item:{id:"minecraft:glowstone_dust",Count:1b}}
execute if score @s glib.itemId matches 411 run summon item ~ ~ ~ {Item:{id:"minecraft:goat_spawn_egg",Count:1b}}
execute if score @s glib.itemId matches 412 run summon item ~ ~ ~ {Item:{id:"minecraft:gold_block",Count:1b}}
execute if score @s glib.itemId matches 413 run summon item ~ ~ ~ {Item:{id:"minecraft:gold_ingot",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
