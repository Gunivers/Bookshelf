execute if score @s glib.itemId matches 74 run summon item ~ ~ ~ {Item:{id:"minecraft:black_glazed_terracotta",Count:1b}}
execute if score @s glib.itemId matches 75 run summon item ~ ~ ~ {Item:{id:"minecraft:black_shulker_box",Count:1b}}
execute if score @s glib.itemId matches 76 run summon item ~ ~ ~ {Item:{id:"minecraft:black_stained_glass",Count:1b}}
execute if score @s glib.itemId matches 77 run summon item ~ ~ ~ {Item:{id:"minecraft:black_stained_glass_pane",Count:1b}}
execute if score @s glib.itemId matches 78 run summon item ~ ~ ~ {Item:{id:"minecraft:black_terracotta",Count:1b}}
execute if score @s glib.itemId matches 79 run summon item ~ ~ ~ {Item:{id:"minecraft:black_wool",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
