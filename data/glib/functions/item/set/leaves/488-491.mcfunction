execute if score @s glib.itemId matches 488 run summon item ~ ~ ~ {Item:{id:"minecraft:ink_sac",Count:1b}}
execute if score @s glib.itemId matches 489 run summon item ~ ~ ~ {Item:{id:"minecraft:iron_axe",Count:1b}}
execute if score @s glib.itemId matches 490 run summon item ~ ~ ~ {Item:{id:"minecraft:iron_bars",Count:1b}}
execute if score @s glib.itemId matches 491 run summon item ~ ~ ~ {Item:{id:"minecraft:iron_block",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
