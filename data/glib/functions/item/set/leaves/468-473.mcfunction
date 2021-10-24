execute if score @s glib.itemId matches 468 run summon item ~ ~ ~ {Item:{id:"minecraft:hoglin_spawn_egg",Count:1b}}
execute if score @s glib.itemId matches 469 run summon item ~ ~ ~ {Item:{id:"minecraft:honey_block",Count:1b}}
execute if score @s glib.itemId matches 470 run summon item ~ ~ ~ {Item:{id:"minecraft:honey_bottle",Count:1b}}
execute if score @s glib.itemId matches 471 run summon item ~ ~ ~ {Item:{id:"minecraft:honeycomb",Count:1b}}
execute if score @s glib.itemId matches 472 run summon item ~ ~ ~ {Item:{id:"minecraft:honeycomb_block",Count:1b}}
execute if score @s glib.itemId matches 473 run summon item ~ ~ ~ {Item:{id:"minecraft:hopper",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
