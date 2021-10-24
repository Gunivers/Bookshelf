execute if score @s glib.itemId matches 549 run summon item ~ ~ ~ {Item:{id:"minecraft:light_blue_concrete",Count:1b}}
execute if score @s glib.itemId matches 550 run summon item ~ ~ ~ {Item:{id:"minecraft:light_blue_concrete_powder",Count:1b}}
execute if score @s glib.itemId matches 551 run summon item ~ ~ ~ {Item:{id:"minecraft:light_blue_dye",Count:1b}}
execute if score @s glib.itemId matches 552 run summon item ~ ~ ~ {Item:{id:"minecraft:light_blue_glazed_terracotta",Count:1b}}
execute if score @s glib.itemId matches 553 run summon item ~ ~ ~ {Item:{id:"minecraft:light_blue_shulker_box",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
