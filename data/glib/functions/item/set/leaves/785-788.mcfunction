execute if score @s glib.itemId matches 785 run summon item ~ ~ ~ {Item:{id:"minecraft:pufferfish_spawn_egg",Count:1b}}
execute if score @s glib.itemId matches 786 run summon item ~ ~ ~ {Item:{id:"minecraft:pumpkin",Count:1b}}
execute if score @s glib.itemId matches 787 run summon item ~ ~ ~ {Item:{id:"minecraft:pumpkin_pie",Count:1b}}
execute if score @s glib.itemId matches 788 run summon item ~ ~ ~ {Item:{id:"minecraft:pumpkin_seeds",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
