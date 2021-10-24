execute if score @s glib.itemId matches 314 run summon item ~ ~ ~ {Item:{id:"minecraft:deepslate_tiles",Count:1b}}
execute if score @s glib.itemId matches 315 run summon item ~ ~ ~ {Item:{id:"minecraft:detector_rail",Count:1b}}
execute if score @s glib.itemId matches 316 run summon item ~ ~ ~ {Item:{id:"minecraft:diamond",Count:1b}}
execute if score @s glib.itemId matches 317 run summon item ~ ~ ~ {Item:{id:"minecraft:diamond_axe",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
