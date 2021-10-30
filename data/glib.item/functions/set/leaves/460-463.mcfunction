execute if score @s glib.itemId matches 460 run summon item ~ ~ ~ {Item:{id:"minecraft:green_wool",Count:1b}}
execute if score @s glib.itemId matches 461 run summon item ~ ~ ~ {Item:{id:"minecraft:grindstone",Count:1b}}
execute if score @s glib.itemId matches 462 run summon item ~ ~ ~ {Item:{id:"minecraft:guardian_spawn_egg",Count:1b}}
execute if score @s glib.itemId matches 463 run summon item ~ ~ ~ {Item:{id:"minecraft:gunpowder",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
