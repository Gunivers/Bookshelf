execute if score @s glib.itemId matches 676 run summon item ~ ~ ~ {Item:{id:"minecraft:oak_fence_gate",Count:1b}}
execute if score @s glib.itemId matches 677 run summon item ~ ~ ~ {Item:{id:"minecraft:oak_leaves",Count:1b}}
execute if score @s glib.itemId matches 678 run summon item ~ ~ ~ {Item:{id:"minecraft:oak_log",Count:1b}}
execute if score @s glib.itemId matches 679 run summon item ~ ~ ~ {Item:{id:"minecraft:oak_planks",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
