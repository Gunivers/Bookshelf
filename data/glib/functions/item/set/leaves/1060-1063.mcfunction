execute if score @s glib.itemId matches 1060 run summon item ~ ~ ~ {Item:{id:"minecraft:white_glazed_terracotta",Count:1b}}
execute if score @s glib.itemId matches 1061 run summon item ~ ~ ~ {Item:{id:"minecraft:white_shulker_box",Count:1b}}
execute if score @s glib.itemId matches 1062 run summon item ~ ~ ~ {Item:{id:"minecraft:white_stained_glass",Count:1b}}
execute if score @s glib.itemId matches 1063 run summon item ~ ~ ~ {Item:{id:"minecraft:white_stained_glass_pane",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
