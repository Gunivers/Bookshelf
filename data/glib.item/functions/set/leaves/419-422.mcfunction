execute if score @s glib.itemId matches 419 run summon item ~ ~ ~ {Item:{id:"minecraft:golden_carrot",Count:1b}}
execute if score @s glib.itemId matches 420 run summon item ~ ~ ~ {Item:{id:"minecraft:golden_chestplate",Count:1b}}
execute if score @s glib.itemId matches 421 run summon item ~ ~ ~ {Item:{id:"minecraft:golden_helmet",Count:1b}}
execute if score @s glib.itemId matches 422 run summon item ~ ~ ~ {Item:{id:"minecraft:golden_hoe",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
