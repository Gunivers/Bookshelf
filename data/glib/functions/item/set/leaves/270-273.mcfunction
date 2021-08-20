execute if score @s glib.itemId matches 270 run summon item ~ ~ ~ {Item:{id:"minecraft:dark_oak_pressure_plate",Count:1b}}
execute if score @s glib.itemId matches 271 run summon item ~ ~ ~ {Item:{id:"minecraft:dark_oak_sapling",Count:1b}}
execute if score @s glib.itemId matches 272 run summon item ~ ~ ~ {Item:{id:"minecraft:dark_oak_sign",Count:1b}}
execute if score @s glib.itemId matches 273 run summon item ~ ~ ~ {Item:{id:"minecraft:dark_oak_slab",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
