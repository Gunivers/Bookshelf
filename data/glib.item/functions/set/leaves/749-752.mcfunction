execute if score @s glib.itemId matches 749 run summon item ~ ~ ~ {Item:{id:"minecraft:polished_blackstone_brick_stairs",Count:1b}}
execute if score @s glib.itemId matches 750 run summon item ~ ~ ~ {Item:{id:"minecraft:polished_blackstone_brick_wall",Count:1b}}
execute if score @s glib.itemId matches 751 run summon item ~ ~ ~ {Item:{id:"minecraft:polished_blackstone_bricks",Count:1b}}
execute if score @s glib.itemId matches 752 run summon item ~ ~ ~ {Item:{id:"minecraft:polished_blackstone_button",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
