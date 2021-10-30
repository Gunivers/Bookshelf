execute if score @s glib.itemId matches 332 run summon item ~ ~ ~ {Item:{id:"minecraft:diorite_wall",Count:1b}}
execute if score @s glib.itemId matches 333 run summon item ~ ~ ~ {Item:{id:"minecraft:dirt",Count:1b}}
execute if score @s glib.itemId matches 334 run summon item ~ ~ ~ {Item:{id:"minecraft:dirt_path",Count:1b}}
execute if score @s glib.itemId matches 335 run summon item ~ ~ ~ {Item:{id:"minecraft:dispenser",Count:1b}}
execute if score @s glib.itemId matches 336 run summon item ~ ~ ~ {Item:{id:"minecraft:dolphin_spawn_egg",Count:1b}}
execute if score @s glib.itemId matches 337 run summon item ~ ~ ~ {Item:{id:"minecraft:donkey_spawn_egg",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
