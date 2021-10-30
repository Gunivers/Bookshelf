execute if score @s glib.itemId matches 942 run summon item ~ ~ ~ {Item:{id:"minecraft:stone_axe",Count:1b}}
execute if score @s glib.itemId matches 943 run summon item ~ ~ ~ {Item:{id:"minecraft:stone_brick_slab",Count:1b}}
execute if score @s glib.itemId matches 944 run summon item ~ ~ ~ {Item:{id:"minecraft:stone_brick_stairs",Count:1b}}
execute if score @s glib.itemId matches 945 run summon item ~ ~ ~ {Item:{id:"minecraft:stone_brick_wall",Count:1b}}
execute if score @s glib.itemId matches 946 run summon item ~ ~ ~ {Item:{id:"minecraft:stone_bricks",Count:1b}}
execute if score @s glib.itemId matches 947 run summon item ~ ~ ~ {Item:{id:"minecraft:stone_button",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
