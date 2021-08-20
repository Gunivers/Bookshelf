execute if score @s glib.itemId matches 301 run summon item ~ ~ ~ {Item:{id:"minecraft:deepslate_brick_wall",Count:1b}}
execute if score @s glib.itemId matches 302 run summon item ~ ~ ~ {Item:{id:"minecraft:deepslate_bricks",Count:1b}}
execute if score @s glib.itemId matches 303 run summon item ~ ~ ~ {Item:{id:"minecraft:deepslate_coal_ore",Count:1b}}
execute if score @s glib.itemId matches 304 run summon item ~ ~ ~ {Item:{id:"minecraft:deepslate_copper_ore",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
