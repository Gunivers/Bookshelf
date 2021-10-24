execute if score @s glib.itemId matches 840 run summon item ~ ~ ~ {Item:{id:"minecraft:red_sandstone",Count:1b}}
execute if score @s glib.itemId matches 841 run summon item ~ ~ ~ {Item:{id:"minecraft:red_sandstone_slab",Count:1b}}
execute if score @s glib.itemId matches 842 run summon item ~ ~ ~ {Item:{id:"minecraft:red_sandstone_stairs",Count:1b}}
execute if score @s glib.itemId matches 843 run summon item ~ ~ ~ {Item:{id:"minecraft:red_sandstone_wall",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
