execute if score @s glib.itemId matches 514 run summon item ~ ~ ~ {Item:{id:"minecraft:jungle_fence_gate",Count:1b}}
execute if score @s glib.itemId matches 515 run summon item ~ ~ ~ {Item:{id:"minecraft:jungle_leaves",Count:1b}}
execute if score @s glib.itemId matches 516 run summon item ~ ~ ~ {Item:{id:"minecraft:jungle_log",Count:1b}}
execute if score @s glib.itemId matches 517 run summon item ~ ~ ~ {Item:{id:"minecraft:jungle_planks",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
