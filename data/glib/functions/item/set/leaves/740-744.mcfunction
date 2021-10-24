execute if score @s glib.itemId matches 740 run summon item ~ ~ ~ {Item:{id:"minecraft:pointed_dripstone",Count:1b}}
execute if score @s glib.itemId matches 741 run summon item ~ ~ ~ {Item:{id:"minecraft:poisonous_potato",Count:1b}}
execute if score @s glib.itemId matches 742 run summon item ~ ~ ~ {Item:{id:"minecraft:polar_bear_spawn_egg",Count:1b}}
execute if score @s glib.itemId matches 743 run summon item ~ ~ ~ {Item:{id:"minecraft:polished_andesite",Count:1b}}
execute if score @s glib.itemId matches 744 run summon item ~ ~ ~ {Item:{id:"minecraft:polished_andesite_slab",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
