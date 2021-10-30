execute if score @s glib.itemId matches 680 run summon item ~ ~ ~ {Item:{id:"minecraft:oak_pressure_plate",Count:1b}}
execute if score @s glib.itemId matches 681 run summon item ~ ~ ~ {Item:{id:"minecraft:oak_sapling",Count:1b}}
execute if score @s glib.itemId matches 682 run summon item ~ ~ ~ {Item:{id:"minecraft:oak_sign",Count:1b}}
execute if score @s glib.itemId matches 683 run summon item ~ ~ ~ {Item:{id:"minecraft:oak_slab",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
