execute if score @s glib.itemId matches 1056 run summon item ~ ~ ~ {Item:{id:"minecraft:white_carpet",Count:1b}}
execute if score @s glib.itemId matches 1057 run summon item ~ ~ ~ {Item:{id:"minecraft:white_concrete",Count:1b}}
execute if score @s glib.itemId matches 1058 run summon item ~ ~ ~ {Item:{id:"minecraft:white_concrete_powder",Count:1b}}
execute if score @s glib.itemId matches 1059 run summon item ~ ~ ~ {Item:{id:"minecraft:white_dye",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
