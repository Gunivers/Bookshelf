execute if score @s glib.itemId matches 948 run summon item ~ ~ ~ {Item:{id:"minecraft:stone_hoe",Count:1b}}
execute if score @s glib.itemId matches 949 run summon item ~ ~ ~ {Item:{id:"minecraft:stone_pickaxe",Count:1b}}
execute if score @s glib.itemId matches 950 run summon item ~ ~ ~ {Item:{id:"minecraft:stone_pressure_plate",Count:1b}}
execute if score @s glib.itemId matches 951 run summon item ~ ~ ~ {Item:{id:"minecraft:stone_shovel",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
