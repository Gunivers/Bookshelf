execute if score @s glib.itemId matches 406 run summon item ~ ~ ~ {Item:{id:"minecraft:glow_item_frame",Count:1b}}
execute if score @s glib.itemId matches 407 run summon item ~ ~ ~ {Item:{id:"minecraft:glow_lichen",Count:1b}}
execute if score @s glib.itemId matches 408 run summon item ~ ~ ~ {Item:{id:"minecraft:glow_squid_spawn_egg",Count:1b}}
execute if score @s glib.itemId matches 409 run summon item ~ ~ ~ {Item:{id:"minecraft:glowstone",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
