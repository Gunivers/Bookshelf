execute if score @s glib.itemId matches 736 run summon item ~ ~ ~ {Item:{id:"minecraft:pink_wool",Count:1b}}
execute if score @s glib.itemId matches 737 run summon item ~ ~ ~ {Item:{id:"minecraft:piston",Count:1b}}
execute if score @s glib.itemId matches 738 run summon item ~ ~ ~ {Item:{id:"minecraft:player_head",Count:1b}}
execute if score @s glib.itemId matches 739 run summon item ~ ~ ~ {Item:{id:"minecraft:podzol",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
