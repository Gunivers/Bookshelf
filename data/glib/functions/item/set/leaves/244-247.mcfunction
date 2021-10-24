execute if score @s glib.itemId matches 244 run summon item ~ ~ ~ {Item:{id:"minecraft:cut_red_sandstone_slab",Count:1b}}
execute if score @s glib.itemId matches 245 run summon item ~ ~ ~ {Item:{id:"minecraft:cut_sandstone",Count:1b}}
execute if score @s glib.itemId matches 246 run summon item ~ ~ ~ {Item:{id:"minecraft:cut_sandstone_slab",Count:1b}}
execute if score @s glib.itemId matches 247 run summon item ~ ~ ~ {Item:{id:"minecraft:cyan_banner",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
