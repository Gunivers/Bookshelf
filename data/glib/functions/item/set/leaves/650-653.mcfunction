execute if score @s glib.itemId matches 650 run summon item ~ ~ ~ {Item:{id:"minecraft:nether_brick_wall",Count:1b}}
execute if score @s glib.itemId matches 651 run summon item ~ ~ ~ {Item:{id:"minecraft:nether_bricks",Count:1b}}
execute if score @s glib.itemId matches 652 run summon item ~ ~ ~ {Item:{id:"minecraft:nether_gold_ore",Count:1b}}
execute if score @s glib.itemId matches 653 run summon item ~ ~ ~ {Item:{id:"minecraft:nether_quartz_ore",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
