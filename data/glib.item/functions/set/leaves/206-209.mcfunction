execute if score @s glib.itemId matches 206 run summon item ~ ~ ~ {Item:{id:"minecraft:cooked_rabbit",Count:1b}}
execute if score @s glib.itemId matches 207 run summon item ~ ~ ~ {Item:{id:"minecraft:cooked_salmon",Count:1b}}
execute if score @s glib.itemId matches 208 run summon item ~ ~ ~ {Item:{id:"minecraft:cookie",Count:1b}}
execute if score @s glib.itemId matches 209 run summon item ~ ~ ~ {Item:{id:"minecraft:copper_block",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id