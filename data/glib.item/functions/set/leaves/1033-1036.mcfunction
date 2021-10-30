execute if score @s glib.itemId matches 1033 run summon item ~ ~ ~ {Item:{id:"minecraft:waxed_exposed_copper",Count:1b}}
execute if score @s glib.itemId matches 1034 run summon item ~ ~ ~ {Item:{id:"minecraft:waxed_exposed_cut_copper",Count:1b}}
execute if score @s glib.itemId matches 1035 run summon item ~ ~ ~ {Item:{id:"minecraft:waxed_exposed_cut_copper_slab",Count:1b}}
execute if score @s glib.itemId matches 1036 run summon item ~ ~ ~ {Item:{id:"minecraft:waxed_exposed_cut_copper_stairs",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
