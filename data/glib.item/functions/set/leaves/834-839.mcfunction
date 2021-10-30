execute if score @s glib.itemId matches 834 run summon item ~ ~ ~ {Item:{id:"minecraft:red_mushroom_block",Count:1b}}
execute if score @s glib.itemId matches 835 run summon item ~ ~ ~ {Item:{id:"minecraft:red_nether_brick_slab",Count:1b}}
execute if score @s glib.itemId matches 836 run summon item ~ ~ ~ {Item:{id:"minecraft:red_nether_brick_stairs",Count:1b}}
execute if score @s glib.itemId matches 837 run summon item ~ ~ ~ {Item:{id:"minecraft:red_nether_brick_wall",Count:1b}}
execute if score @s glib.itemId matches 838 run summon item ~ ~ ~ {Item:{id:"minecraft:red_nether_bricks",Count:1b}}
execute if score @s glib.itemId matches 839 run summon item ~ ~ ~ {Item:{id:"minecraft:red_sand",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
