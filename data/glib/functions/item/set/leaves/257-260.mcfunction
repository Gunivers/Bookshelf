execute if score @s glib.itemId matches 257 run summon item ~ ~ ~ {Item:{id:"minecraft:cyan_stained_glass_pane",Count:1b}}
execute if score @s glib.itemId matches 258 run summon item ~ ~ ~ {Item:{id:"minecraft:cyan_terracotta",Count:1b}}
execute if score @s glib.itemId matches 259 run summon item ~ ~ ~ {Item:{id:"minecraft:cyan_wool",Count:1b}}
execute if score @s glib.itemId matches 260 run summon item ~ ~ ~ {Item:{id:"minecraft:damaged_anvil",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
