execute if score @s glib.itemId matches 952 run summon item ~ ~ ~ {Item:{id:"minecraft:stone_slab",Count:1b}}
execute if score @s glib.itemId matches 953 run summon item ~ ~ ~ {Item:{id:"minecraft:stone_stairs",Count:1b}}
execute if score @s glib.itemId matches 954 run summon item ~ ~ ~ {Item:{id:"minecraft:stone_sword",Count:1b}}
execute if score @s glib.itemId matches 955 run summon item ~ ~ ~ {Item:{id:"minecraft:stonecutter",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
