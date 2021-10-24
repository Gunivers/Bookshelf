execute if score @s glib.itemId matches 924 run summon item ~ ~ ~ {Item:{id:"minecraft:spruce_door",Count:1b}}
execute if score @s glib.itemId matches 925 run summon item ~ ~ ~ {Item:{id:"minecraft:spruce_fence",Count:1b}}
execute if score @s glib.itemId matches 926 run summon item ~ ~ ~ {Item:{id:"minecraft:spruce_fence_gate",Count:1b}}
execute if score @s glib.itemId matches 927 run summon item ~ ~ ~ {Item:{id:"minecraft:spruce_leaves",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
