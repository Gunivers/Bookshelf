execute if score @s glib.itemId matches 148 run summon item ~ ~ ~ {Item:{id:"minecraft:cartography_table",Count:1b}}
execute if score @s glib.itemId matches 149 run summon item ~ ~ ~ {Item:{id:"minecraft:carved_pumpkin",Count:1b}}
execute if score @s glib.itemId matches 150 run summon item ~ ~ ~ {Item:{id:"minecraft:cat_spawn_egg",Count:1b}}
execute if score @s glib.itemId matches 151 run summon item ~ ~ ~ {Item:{id:"minecraft:cauldron",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
