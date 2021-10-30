execute if score @s glib.itemId matches 745 run summon item ~ ~ ~ {Item:{id:"minecraft:polished_andesite_stairs",Count:1b}}
execute if score @s glib.itemId matches 746 run summon item ~ ~ ~ {Item:{id:"minecraft:polished_basalt",Count:1b}}
execute if score @s glib.itemId matches 747 run summon item ~ ~ ~ {Item:{id:"minecraft:polished_blackstone",Count:1b}}
execute if score @s glib.itemId matches 748 run summon item ~ ~ ~ {Item:{id:"minecraft:polished_blackstone_brick_slab",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
