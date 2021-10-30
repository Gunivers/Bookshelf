execute if score @s glib.itemId matches 342 run summon item ~ ~ ~ {Item:{id:"minecraft:dried_kelp_block",Count:1b}}
execute if score @s glib.itemId matches 343 run summon item ~ ~ ~ {Item:{id:"minecraft:dripstone_block",Count:1b}}
execute if score @s glib.itemId matches 344 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b}}
execute if score @s glib.itemId matches 345 run summon item ~ ~ ~ {Item:{id:"minecraft:drowned_spawn_egg",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
