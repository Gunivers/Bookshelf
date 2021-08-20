execute if score @s glib.itemId matches 844 run summon item ~ ~ ~ {Item:{id:"minecraft:red_shulker_box",Count:1b}}
execute if score @s glib.itemId matches 845 run summon item ~ ~ ~ {Item:{id:"minecraft:red_stained_glass",Count:1b}}
execute if score @s glib.itemId matches 846 run summon item ~ ~ ~ {Item:{id:"minecraft:red_stained_glass_pane",Count:1b}}
execute if score @s glib.itemId matches 847 run summon item ~ ~ ~ {Item:{id:"minecraft:red_terracotta",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
