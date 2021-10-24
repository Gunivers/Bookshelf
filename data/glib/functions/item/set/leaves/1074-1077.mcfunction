execute if score @s glib.itemId matches 1074 run summon item ~ ~ ~ {Item:{id:"minecraft:wooden_pickaxe",Count:1b}}
execute if score @s glib.itemId matches 1075 run summon item ~ ~ ~ {Item:{id:"minecraft:wooden_shovel",Count:1b}}
execute if score @s glib.itemId matches 1076 run summon item ~ ~ ~ {Item:{id:"minecraft:wooden_sword",Count:1b}}
execute if score @s glib.itemId matches 1077 run summon item ~ ~ ~ {Item:{id:"minecraft:writable_book",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
