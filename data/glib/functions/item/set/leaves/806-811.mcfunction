execute if score @s glib.itemId matches 806 run summon item ~ ~ ~ {Item:{id:"minecraft:quartz",Count:1b}}
execute if score @s glib.itemId matches 807 run summon item ~ ~ ~ {Item:{id:"minecraft:quartz_block",Count:1b}}
execute if score @s glib.itemId matches 808 run summon item ~ ~ ~ {Item:{id:"minecraft:quartz_bricks",Count:1b}}
execute if score @s glib.itemId matches 809 run summon item ~ ~ ~ {Item:{id:"minecraft:quartz_pillar",Count:1b}}
execute if score @s glib.itemId matches 810 run summon item ~ ~ ~ {Item:{id:"minecraft:quartz_slab",Count:1b}}
execute if score @s glib.itemId matches 811 run summon item ~ ~ ~ {Item:{id:"minecraft:quartz_stairs",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
