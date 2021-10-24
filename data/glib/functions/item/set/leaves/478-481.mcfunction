execute if score @s glib.itemId matches 478 run summon item ~ ~ ~ {Item:{id:"minecraft:horse_spawn_egg",Count:1b}}
execute if score @s glib.itemId matches 479 run summon item ~ ~ ~ {Item:{id:"minecraft:husk_spawn_egg",Count:1b}}
execute if score @s glib.itemId matches 480 run summon item ~ ~ ~ {Item:{id:"minecraft:ice",Count:1b}}
execute if score @s glib.itemId matches 481 run summon item ~ ~ ~ {Item:{id:"minecraft:infested_chiseled_stone_bricks",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
