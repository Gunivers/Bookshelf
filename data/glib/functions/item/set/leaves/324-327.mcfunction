execute if score @s glib.itemId matches 324 run summon item ~ ~ ~ {Item:{id:"minecraft:diamond_leggings",Count:1b}}
execute if score @s glib.itemId matches 325 run summon item ~ ~ ~ {Item:{id:"minecraft:diamond_ore",Count:1b}}
execute if score @s glib.itemId matches 326 run summon item ~ ~ ~ {Item:{id:"minecraft:diamond_pickaxe",Count:1b}}
execute if score @s glib.itemId matches 327 run summon item ~ ~ ~ {Item:{id:"minecraft:diamond_shovel",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
