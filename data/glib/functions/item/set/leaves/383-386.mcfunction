execute if score @s glib.itemId matches 383 run summon item ~ ~ ~ {Item:{id:"minecraft:firework_rocket",Count:1b}}
execute if score @s glib.itemId matches 384 run summon item ~ ~ ~ {Item:{id:"minecraft:firework_star",Count:1b}}
execute if score @s glib.itemId matches 385 run summon item ~ ~ ~ {Item:{id:"minecraft:fishing_rod",Count:1b}}
execute if score @s glib.itemId matches 386 run summon item ~ ~ ~ {Item:{id:"minecraft:fletching_table",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
