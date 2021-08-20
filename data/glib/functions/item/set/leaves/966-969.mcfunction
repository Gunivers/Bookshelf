execute if score @s glib.itemId matches 966 run summon item ~ ~ ~ {Item:{id:"minecraft:stripped_dark_oak_wood",Count:1b}}
execute if score @s glib.itemId matches 967 run summon item ~ ~ ~ {Item:{id:"minecraft:stripped_jungle_log",Count:1b}}
execute if score @s glib.itemId matches 968 run summon item ~ ~ ~ {Item:{id:"minecraft:stripped_jungle_wood",Count:1b}}
execute if score @s glib.itemId matches 969 run summon item ~ ~ ~ {Item:{id:"minecraft:stripped_oak_log",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
