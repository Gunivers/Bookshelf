execute if score @s glib.itemId matches 989 run summon item ~ ~ ~ {Item:{id:"minecraft:torch",Count:1b}}
execute if score @s glib.itemId matches 990 run summon item ~ ~ ~ {Item:{id:"minecraft:totem_of_undying",Count:1b}}
execute if score @s glib.itemId matches 991 run summon item ~ ~ ~ {Item:{id:"minecraft:trader_llama_spawn_egg",Count:1b}}
execute if score @s glib.itemId matches 992 run summon item ~ ~ ~ {Item:{id:"minecraft:trapped_chest",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
