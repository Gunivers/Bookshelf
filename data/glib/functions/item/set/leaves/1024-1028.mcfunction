execute if score @s glib.itemId matches 1024 run summon item ~ ~ ~ {Item:{id:"minecraft:warped_stairs",Count:1b}}
execute if score @s glib.itemId matches 1025 run summon item ~ ~ ~ {Item:{id:"minecraft:warped_stem",Count:1b}}
execute if score @s glib.itemId matches 1026 run summon item ~ ~ ~ {Item:{id:"minecraft:warped_trapdoor",Count:1b}}
execute if score @s glib.itemId matches 1027 run summon item ~ ~ ~ {Item:{id:"minecraft:warped_wart_block",Count:1b}}
execute if score @s glib.itemId matches 1028 run summon item ~ ~ ~ {Item:{id:"minecraft:water_bucket",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
