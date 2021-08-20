execute if score @s glib.itemId matches 976 run summon item ~ ~ ~ {Item:{id:"minecraft:structure_void",Count:1b}}
execute if score @s glib.itemId matches 977 run summon item ~ ~ ~ {Item:{id:"minecraft:sugar",Count:1b}}
execute if score @s glib.itemId matches 978 run summon item ~ ~ ~ {Item:{id:"minecraft:sugar_cane",Count:1b}}
execute if score @s glib.itemId matches 979 run summon item ~ ~ ~ {Item:{id:"minecraft:sunflower",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
