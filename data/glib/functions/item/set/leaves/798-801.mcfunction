execute if score @s glib.itemId matches 798 run summon item ~ ~ ~ {Item:{id:"minecraft:purple_stained_glass",Count:1b}}
execute if score @s glib.itemId matches 799 run summon item ~ ~ ~ {Item:{id:"minecraft:purple_stained_glass_pane",Count:1b}}
execute if score @s glib.itemId matches 800 run summon item ~ ~ ~ {Item:{id:"minecraft:purple_terracotta",Count:1b}}
execute if score @s glib.itemId matches 801 run summon item ~ ~ ~ {Item:{id:"minecraft:purple_wool",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
