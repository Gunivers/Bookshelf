execute if score @s glib.itemId matches 318 run summon item ~ ~ ~ {Item:{id:"minecraft:diamond_block",Count:1b}}
execute if score @s glib.itemId matches 319 run summon item ~ ~ ~ {Item:{id:"minecraft:diamond_boots",Count:1b}}
execute if score @s glib.itemId matches 320 run summon item ~ ~ ~ {Item:{id:"minecraft:diamond_chestplate",Count:1b}}
execute if score @s glib.itemId matches 321 run summon item ~ ~ ~ {Item:{id:"minecraft:diamond_helmet",Count:1b}}
execute if score @s glib.itemId matches 322 run summon item ~ ~ ~ {Item:{id:"minecraft:diamond_hoe",Count:1b}}
execute if score @s glib.itemId matches 323 run summon item ~ ~ ~ {Item:{id:"minecraft:diamond_horse_armor",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
