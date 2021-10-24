execute if score @s glib.itemId matches 732 run summon item ~ ~ ~ {Item:{id:"minecraft:pink_stained_glass",Count:1b}}
execute if score @s glib.itemId matches 733 run summon item ~ ~ ~ {Item:{id:"minecraft:pink_stained_glass_pane",Count:1b}}
execute if score @s glib.itemId matches 734 run summon item ~ ~ ~ {Item:{id:"minecraft:pink_terracotta",Count:1b}}
execute if score @s glib.itemId matches 735 run summon item ~ ~ ~ {Item:{id:"minecraft:pink_tulip",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
