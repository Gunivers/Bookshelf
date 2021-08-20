execute if score @s glib.itemId matches 758 run summon item ~ ~ ~ {Item:{id:"minecraft:polished_deepslate_slab",Count:1b}}
execute if score @s glib.itemId matches 759 run summon item ~ ~ ~ {Item:{id:"minecraft:polished_deepslate_stairs",Count:1b}}
execute if score @s glib.itemId matches 760 run summon item ~ ~ ~ {Item:{id:"minecraft:polished_deepslate_wall",Count:1b}}
execute if score @s glib.itemId matches 761 run summon item ~ ~ ~ {Item:{id:"minecraft:polished_diorite",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
