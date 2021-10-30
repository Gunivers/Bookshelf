execute if score @s glib.itemId matches 862 run summon item ~ ~ ~ {Item:{id:"minecraft:salmon",Count:1b}}
execute if score @s glib.itemId matches 863 run summon item ~ ~ ~ {Item:{id:"minecraft:salmon_bucket",Count:1b}}
execute if score @s glib.itemId matches 864 run summon item ~ ~ ~ {Item:{id:"minecraft:salmon_spawn_egg",Count:1b}}
execute if score @s glib.itemId matches 865 run summon item ~ ~ ~ {Item:{id:"minecraft:sand",Count:1b}}
execute if score @s glib.itemId matches 866 run summon item ~ ~ ~ {Item:{id:"minecraft:sandstone",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
