execute if score @s glib.itemId matches 440 run summon item ~ ~ ~ {Item:{id:"minecraft:gray_concrete_powder",Count:1b}}
execute if score @s glib.itemId matches 441 run summon item ~ ~ ~ {Item:{id:"minecraft:gray_dye",Count:1b}}
execute if score @s glib.itemId matches 442 run summon item ~ ~ ~ {Item:{id:"minecraft:gray_glazed_terracotta",Count:1b}}
execute if score @s glib.itemId matches 443 run summon item ~ ~ ~ {Item:{id:"minecraft:gray_shulker_box",Count:1b}}
execute if score @s glib.itemId matches 444 run summon item ~ ~ ~ {Item:{id:"minecraft:gray_stained_glass",Count:1b}}
execute if score @s glib.itemId matches 445 run summon item ~ ~ ~ {Item:{id:"minecraft:gray_stained_glass_pane",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
