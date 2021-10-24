execute if score @s glib.itemId matches 627 run summon item ~ ~ ~ {Item:{id:"minecraft:mossy_stone_bricks",Count:1b}}
execute if score @s glib.itemId matches 628 run summon item ~ ~ ~ {Item:{id:"minecraft:mule_spawn_egg",Count:1b}}
execute if score @s glib.itemId matches 629 run summon item ~ ~ ~ {Item:{id:"minecraft:mushroom_stem",Count:1b}}
execute if score @s glib.itemId matches 630 run summon item ~ ~ ~ {Item:{id:"minecraft:mushroom_stew",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
