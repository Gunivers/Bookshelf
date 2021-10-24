execute if score @s glib.itemId matches 875 run summon item ~ ~ ~ {Item:{id:"minecraft:seagrass",Count:1b}}
execute if score @s glib.itemId matches 876 run summon item ~ ~ ~ {Item:{id:"minecraft:shears",Count:1b}}
execute if score @s glib.itemId matches 877 run summon item ~ ~ ~ {Item:{id:"minecraft:sheep_spawn_egg",Count:1b}}
execute if score @s glib.itemId matches 878 run summon item ~ ~ ~ {Item:{id:"minecraft:shield",Count:1b}}
execute if score @s glib.itemId matches 879 run summon item ~ ~ ~ {Item:{id:"minecraft:shroomlight",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
