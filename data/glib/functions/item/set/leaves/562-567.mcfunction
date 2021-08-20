execute if score @s glib.itemId matches 562 run summon item ~ ~ ~ {Item:{id:"minecraft:light_gray_concrete",Count:1b}}
execute if score @s glib.itemId matches 563 run summon item ~ ~ ~ {Item:{id:"minecraft:light_gray_concrete_powder",Count:1b}}
execute if score @s glib.itemId matches 564 run summon item ~ ~ ~ {Item:{id:"minecraft:light_gray_dye",Count:1b}}
execute if score @s glib.itemId matches 565 run summon item ~ ~ ~ {Item:{id:"minecraft:light_gray_glazed_terracotta",Count:1b}}
execute if score @s glib.itemId matches 566 run summon item ~ ~ ~ {Item:{id:"minecraft:light_gray_shulker_box",Count:1b}}
execute if score @s glib.itemId matches 567 run summon item ~ ~ ~ {Item:{id:"minecraft:light_gray_stained_glass",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
