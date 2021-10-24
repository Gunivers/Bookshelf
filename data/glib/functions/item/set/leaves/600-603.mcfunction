execute if score @s glib.itemId matches 600 run summon item ~ ~ ~ {Item:{id:"minecraft:magenta_glazed_terracotta",Count:1b}}
execute if score @s glib.itemId matches 601 run summon item ~ ~ ~ {Item:{id:"minecraft:magenta_shulker_box",Count:1b}}
execute if score @s glib.itemId matches 602 run summon item ~ ~ ~ {Item:{id:"minecraft:magenta_stained_glass",Count:1b}}
execute if score @s glib.itemId matches 603 run summon item ~ ~ ~ {Item:{id:"minecraft:magenta_stained_glass_pane",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
