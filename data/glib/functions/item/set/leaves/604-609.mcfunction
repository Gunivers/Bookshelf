execute if score @s glib.itemId matches 604 run summon item ~ ~ ~ {Item:{id:"minecraft:magenta_terracotta",Count:1b}}
execute if score @s glib.itemId matches 605 run summon item ~ ~ ~ {Item:{id:"minecraft:magenta_wool",Count:1b}}
execute if score @s glib.itemId matches 606 run summon item ~ ~ ~ {Item:{id:"minecraft:magma_block",Count:1b}}
execute if score @s glib.itemId matches 607 run summon item ~ ~ ~ {Item:{id:"minecraft:magma_cream",Count:1b}}
execute if score @s glib.itemId matches 608 run summon item ~ ~ ~ {Item:{id:"minecraft:magma_cube_spawn_egg",Count:1b}}
execute if score @s glib.itemId matches 609 run summon item ~ ~ ~ {Item:{id:"minecraft:map",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
