execute if score @s glib.itemId matches 667 run summon item ~ ~ ~ {Item:{id:"minecraft:netherite_scrap",Count:1b}}
execute if score @s glib.itemId matches 668 run summon item ~ ~ ~ {Item:{id:"minecraft:netherite_shovel",Count:1b}}
execute if score @s glib.itemId matches 669 run summon item ~ ~ ~ {Item:{id:"minecraft:netherite_sword",Count:1b}}
execute if score @s glib.itemId matches 670 run summon item ~ ~ ~ {Item:{id:"minecraft:netherrack",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
