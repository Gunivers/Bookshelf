execute if score @s glib.itemId matches 762 run summon item ~ ~ ~ {Item:{id:"minecraft:polished_diorite_slab",Count:1b}}
execute if score @s glib.itemId matches 763 run summon item ~ ~ ~ {Item:{id:"minecraft:polished_diorite_stairs",Count:1b}}
execute if score @s glib.itemId matches 764 run summon item ~ ~ ~ {Item:{id:"minecraft:polished_granite",Count:1b}}
execute if score @s glib.itemId matches 765 run summon item ~ ~ ~ {Item:{id:"minecraft:polished_granite_slab",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
