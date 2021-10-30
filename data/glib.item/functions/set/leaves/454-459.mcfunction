execute if score @s glib.itemId matches 454 run summon item ~ ~ ~ {Item:{id:"minecraft:green_dye",Count:1b}}
execute if score @s glib.itemId matches 455 run summon item ~ ~ ~ {Item:{id:"minecraft:green_glazed_terracotta",Count:1b}}
execute if score @s glib.itemId matches 456 run summon item ~ ~ ~ {Item:{id:"minecraft:green_shulker_box",Count:1b}}
execute if score @s glib.itemId matches 457 run summon item ~ ~ ~ {Item:{id:"minecraft:green_stained_glass",Count:1b}}
execute if score @s glib.itemId matches 458 run summon item ~ ~ ~ {Item:{id:"minecraft:green_stained_glass_pane",Count:1b}}
execute if score @s glib.itemId matches 459 run summon item ~ ~ ~ {Item:{id:"minecraft:green_terracotta",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
