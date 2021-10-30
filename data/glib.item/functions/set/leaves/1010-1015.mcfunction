execute if score @s glib.itemId matches 1010 run summon item ~ ~ ~ {Item:{id:"minecraft:wandering_trader_spawn_egg",Count:1b}}
execute if score @s glib.itemId matches 1011 run summon item ~ ~ ~ {Item:{id:"minecraft:warped_button",Count:1b}}
execute if score @s glib.itemId matches 1012 run summon item ~ ~ ~ {Item:{id:"minecraft:warped_door",Count:1b}}
execute if score @s glib.itemId matches 1013 run summon item ~ ~ ~ {Item:{id:"minecraft:warped_fence",Count:1b}}
execute if score @s glib.itemId matches 1014 run summon item ~ ~ ~ {Item:{id:"minecraft:warped_fence_gate",Count:1b}}
execute if score @s glib.itemId matches 1015 run summon item ~ ~ ~ {Item:{id:"minecraft:warped_fungus",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
