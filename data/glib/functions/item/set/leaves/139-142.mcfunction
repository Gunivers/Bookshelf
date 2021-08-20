execute if score @s glib.itemId matches 139 run summon item ~ ~ ~ {Item:{id:"minecraft:budding_amethyst",Count:1b}}
execute if score @s glib.itemId matches 140 run summon item ~ ~ ~ {Item:{id:"minecraft:bundle",Count:1b}}
execute if score @s glib.itemId matches 141 run summon item ~ ~ ~ {Item:{id:"minecraft:cactus",Count:1b}}
execute if score @s glib.itemId matches 142 run summon item ~ ~ ~ {Item:{id:"minecraft:cake",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
