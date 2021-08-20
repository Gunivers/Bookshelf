execute if score @s glib.itemId matches 644 run summon item ~ ~ ~ {Item:{id:"minecraft:name_tag",Count:1b}}
execute if score @s glib.itemId matches 645 run summon item ~ ~ ~ {Item:{id:"minecraft:nautilus_shell",Count:1b}}
execute if score @s glib.itemId matches 646 run summon item ~ ~ ~ {Item:{id:"minecraft:nether_brick",Count:1b}}
execute if score @s glib.itemId matches 647 run summon item ~ ~ ~ {Item:{id:"minecraft:nether_brick_fence",Count:1b}}
execute if score @s glib.itemId matches 648 run summon item ~ ~ ~ {Item:{id:"minecraft:nether_brick_slab",Count:1b}}
execute if score @s glib.itemId matches 649 run summon item ~ ~ ~ {Item:{id:"minecraft:nether_brick_stairs",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
