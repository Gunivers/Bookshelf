execute if score @s glib.itemId matches 867 run summon item ~ ~ ~ {Item:{id:"minecraft:sandstone_slab",Count:1b}}
execute if score @s glib.itemId matches 868 run summon item ~ ~ ~ {Item:{id:"minecraft:sandstone_stairs",Count:1b}}
execute if score @s glib.itemId matches 869 run summon item ~ ~ ~ {Item:{id:"minecraft:sandstone_wall",Count:1b}}
execute if score @s glib.itemId matches 870 run summon item ~ ~ ~ {Item:{id:"minecraft:scaffolding",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
