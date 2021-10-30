execute if score @s glib.itemId matches 586 run summon item ~ ~ ~ {Item:{id:"minecraft:lime_stained_glass_pane",Count:1b}}
execute if score @s glib.itemId matches 587 run summon item ~ ~ ~ {Item:{id:"minecraft:lime_terracotta",Count:1b}}
execute if score @s glib.itemId matches 588 run summon item ~ ~ ~ {Item:{id:"minecraft:lime_wool",Count:1b}}
execute if score @s glib.itemId matches 589 run summon item ~ ~ ~ {Item:{id:"minecraft:lingering_potion",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
