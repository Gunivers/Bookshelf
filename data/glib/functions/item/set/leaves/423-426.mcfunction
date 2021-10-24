execute if score @s glib.itemId matches 423 run summon item ~ ~ ~ {Item:{id:"minecraft:golden_horse_armor",Count:1b}}
execute if score @s glib.itemId matches 424 run summon item ~ ~ ~ {Item:{id:"minecraft:golden_leggings",Count:1b}}
execute if score @s glib.itemId matches 425 run summon item ~ ~ ~ {Item:{id:"minecraft:golden_pickaxe",Count:1b}}
execute if score @s glib.itemId matches 426 run summon item ~ ~ ~ {Item:{id:"minecraft:golden_shovel",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
