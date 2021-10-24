execute if score @s glib.itemId matches 496 run summon item ~ ~ ~ {Item:{id:"minecraft:iron_hoe",Count:1b}}
execute if score @s glib.itemId matches 497 run summon item ~ ~ ~ {Item:{id:"minecraft:iron_horse_armor",Count:1b}}
execute if score @s glib.itemId matches 498 run summon item ~ ~ ~ {Item:{id:"minecraft:iron_ingot",Count:1b}}
execute if score @s glib.itemId matches 499 run summon item ~ ~ ~ {Item:{id:"minecraft:iron_leggings",Count:1b}}
execute if score @s glib.itemId matches 500 run summon item ~ ~ ~ {Item:{id:"minecraft:iron_nugget",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
