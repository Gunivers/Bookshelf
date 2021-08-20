execute if score @s glib.itemId matches 346 run summon item ~ ~ ~ {Item:{id:"minecraft:egg",Count:1b}}
execute if score @s glib.itemId matches 347 run summon item ~ ~ ~ {Item:{id:"minecraft:elder_guardian_spawn_egg",Count:1b}}
execute if score @s glib.itemId matches 348 run summon item ~ ~ ~ {Item:{id:"minecraft:elytra",Count:1b}}
execute if score @s glib.itemId matches 349 run summon item ~ ~ ~ {Item:{id:"minecraft:emerald",Count:1b}}
execute if score @s glib.itemId matches 350 run summon item ~ ~ ~ {Item:{id:"minecraft:emerald_block",Count:1b}}
execute if score @s glib.itemId matches 351 run summon item ~ ~ ~ {Item:{id:"minecraft:emerald_ore",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
