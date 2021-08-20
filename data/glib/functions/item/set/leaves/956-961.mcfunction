execute if score @s glib.itemId matches 956 run summon item ~ ~ ~ {Item:{id:"minecraft:stray_spawn_egg",Count:1b}}
execute if score @s glib.itemId matches 957 run summon item ~ ~ ~ {Item:{id:"minecraft:strider_spawn_egg",Count:1b}}
execute if score @s glib.itemId matches 958 run summon item ~ ~ ~ {Item:{id:"minecraft:string",Count:1b}}
execute if score @s glib.itemId matches 959 run summon item ~ ~ ~ {Item:{id:"minecraft:stripped_acacia_log",Count:1b}}
execute if score @s glib.itemId matches 960 run summon item ~ ~ ~ {Item:{id:"minecraft:stripped_acacia_wood",Count:1b}}
execute if score @s glib.itemId matches 961 run summon item ~ ~ ~ {Item:{id:"minecraft:stripped_birch_log",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
