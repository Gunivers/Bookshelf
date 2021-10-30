execute if score @s glib.itemId matches 554 run summon item ~ ~ ~ {Item:{id:"minecraft:light_blue_stained_glass",Count:1b}}
execute if score @s glib.itemId matches 555 run summon item ~ ~ ~ {Item:{id:"minecraft:light_blue_stained_glass_pane",Count:1b}}
execute if score @s glib.itemId matches 556 run summon item ~ ~ ~ {Item:{id:"minecraft:light_blue_terracotta",Count:1b}}
execute if score @s glib.itemId matches 557 run summon item ~ ~ ~ {Item:{id:"minecraft:light_blue_wool",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
