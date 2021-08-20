execute if score @s glib.itemId matches 492 run summon item ~ ~ ~ {Item:{id:"minecraft:iron_boots",Count:1b}}
execute if score @s glib.itemId matches 493 run summon item ~ ~ ~ {Item:{id:"minecraft:iron_chestplate",Count:1b}}
execute if score @s glib.itemId matches 494 run summon item ~ ~ ~ {Item:{id:"minecraft:iron_door",Count:1b}}
execute if score @s glib.itemId matches 495 run summon item ~ ~ ~ {Item:{id:"minecraft:iron_helmet",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
