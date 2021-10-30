execute if score @s glib.itemId matches 698 run summon item ~ ~ ~ {Item:{id:"minecraft:orange_shulker_box",Count:1b}}
execute if score @s glib.itemId matches 699 run summon item ~ ~ ~ {Item:{id:"minecraft:orange_stained_glass",Count:1b}}
execute if score @s glib.itemId matches 700 run summon item ~ ~ ~ {Item:{id:"minecraft:orange_stained_glass_pane",Count:1b}}
execute if score @s glib.itemId matches 701 run summon item ~ ~ ~ {Item:{id:"minecraft:orange_terracotta",Count:1b}}
execute if score @s glib.itemId matches 702 run summon item ~ ~ ~ {Item:{id:"minecraft:orange_tulip",Count:1b}}
execute if score @s glib.itemId matches 703 run summon item ~ ~ ~ {Item:{id:"minecraft:orange_wool",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
