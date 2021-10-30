execute if score @s glib.itemId matches 938 run summon item ~ ~ ~ {Item:{id:"minecraft:squid_spawn_egg",Count:1b}}
execute if score @s glib.itemId matches 939 run summon item ~ ~ ~ {Item:{id:"minecraft:stick",Count:1b}}
execute if score @s glib.itemId matches 940 run summon item ~ ~ ~ {Item:{id:"minecraft:sticky_piston",Count:1b}}
execute if score @s glib.itemId matches 941 run summon item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
