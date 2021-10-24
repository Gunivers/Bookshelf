execute if score @s glib.itemId matches 192 run summon item ~ ~ ~ {Item:{id:"minecraft:cod",Count:1b}}
execute if score @s glib.itemId matches 193 run summon item ~ ~ ~ {Item:{id:"minecraft:cod_bucket",Count:1b}}
execute if score @s glib.itemId matches 194 run summon item ~ ~ ~ {Item:{id:"minecraft:cod_spawn_egg",Count:1b}}
execute if score @s glib.itemId matches 195 run summon item ~ ~ ~ {Item:{id:"minecraft:command_block",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
