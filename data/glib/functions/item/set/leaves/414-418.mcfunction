execute if score @s glib.itemId matches 414 run summon item ~ ~ ~ {Item:{id:"minecraft:gold_nugget",Count:1b}}
execute if score @s glib.itemId matches 415 run summon item ~ ~ ~ {Item:{id:"minecraft:gold_ore",Count:1b}}
execute if score @s glib.itemId matches 416 run summon item ~ ~ ~ {Item:{id:"minecraft:golden_apple",Count:1b}}
execute if score @s glib.itemId matches 417 run summon item ~ ~ ~ {Item:{id:"minecraft:golden_axe",Count:1b}}
execute if score @s glib.itemId matches 418 run summon item ~ ~ ~ {Item:{id:"minecraft:golden_boots",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
