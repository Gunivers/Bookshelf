execute if score @s glib.itemId matches 596 run summon item ~ ~ ~ {Item:{id:"minecraft:magenta_carpet",Count:1b}}
execute if score @s glib.itemId matches 597 run summon item ~ ~ ~ {Item:{id:"minecraft:magenta_concrete",Count:1b}}
execute if score @s glib.itemId matches 598 run summon item ~ ~ ~ {Item:{id:"minecraft:magenta_concrete_powder",Count:1b}}
execute if score @s glib.itemId matches 599 run summon item ~ ~ ~ {Item:{id:"minecraft:magenta_dye",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
