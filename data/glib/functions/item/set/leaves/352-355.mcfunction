execute if score @s glib.itemId matches 352 run summon item ~ ~ ~ {Item:{id:"minecraft:enchanted_book",Count:1b}}
execute if score @s glib.itemId matches 353 run summon item ~ ~ ~ {Item:{id:"minecraft:enchanted_golden_apple",Count:1b}}
execute if score @s glib.itemId matches 354 run summon item ~ ~ ~ {Item:{id:"minecraft:enchanting_table",Count:1b}}
execute if score @s glib.itemId matches 355 run summon item ~ ~ ~ {Item:{id:"minecraft:end_crystal",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
