execute if score @s glib.itemId matches 726 run summon item ~ ~ ~ {Item:{id:"minecraft:pink_carpet",Count:1b}}
execute if score @s glib.itemId matches 727 run summon item ~ ~ ~ {Item:{id:"minecraft:pink_concrete",Count:1b}}
execute if score @s glib.itemId matches 728 run summon item ~ ~ ~ {Item:{id:"minecraft:pink_concrete_powder",Count:1b}}
execute if score @s glib.itemId matches 729 run summon item ~ ~ ~ {Item:{id:"minecraft:pink_dye",Count:1b}}
execute if score @s glib.itemId matches 730 run summon item ~ ~ ~ {Item:{id:"minecraft:pink_glazed_terracotta",Count:1b}}
execute if score @s glib.itemId matches 731 run summon item ~ ~ ~ {Item:{id:"minecraft:pink_shulker_box",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
