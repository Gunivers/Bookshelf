execute if score @s glib.itemId matches 753 run summon item ~ ~ ~ {Item:{id:"minecraft:polished_blackstone_pressure_plate",Count:1b}}
execute if score @s glib.itemId matches 754 run summon item ~ ~ ~ {Item:{id:"minecraft:polished_blackstone_slab",Count:1b}}
execute if score @s glib.itemId matches 755 run summon item ~ ~ ~ {Item:{id:"minecraft:polished_blackstone_stairs",Count:1b}}
execute if score @s glib.itemId matches 756 run summon item ~ ~ ~ {Item:{id:"minecraft:polished_blackstone_wall",Count:1b}}
execute if score @s glib.itemId matches 757 run summon item ~ ~ ~ {Item:{id:"minecraft:polished_deepslate",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
