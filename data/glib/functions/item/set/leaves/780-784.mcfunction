execute if score @s glib.itemId matches 780 run summon item ~ ~ ~ {Item:{id:"minecraft:prismarine_slab",Count:1b}}
execute if score @s glib.itemId matches 781 run summon item ~ ~ ~ {Item:{id:"minecraft:prismarine_stairs",Count:1b}}
execute if score @s glib.itemId matches 782 run summon item ~ ~ ~ {Item:{id:"minecraft:prismarine_wall",Count:1b}}
execute if score @s glib.itemId matches 783 run summon item ~ ~ ~ {Item:{id:"minecraft:pufferfish",Count:1b}}
execute if score @s glib.itemId matches 784 run summon item ~ ~ ~ {Item:{id:"minecraft:pufferfish_bucket",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
