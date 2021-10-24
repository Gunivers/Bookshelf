execute if score @s glib.itemId matches 179 run summon item ~ ~ ~ {Item:{id:"minecraft:coal_block",Count:1b}}
execute if score @s glib.itemId matches 180 run summon item ~ ~ ~ {Item:{id:"minecraft:coal_ore",Count:1b}}
execute if score @s glib.itemId matches 181 run summon item ~ ~ ~ {Item:{id:"minecraft:coarse_dirt",Count:1b}}
execute if score @s glib.itemId matches 182 run summon item ~ ~ ~ {Item:{id:"minecraft:cobbled_deepslate",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
