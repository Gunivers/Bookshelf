execute if score @s glib.itemId matches 274 run summon item ~ ~ ~ {Item:{id:"minecraft:dark_oak_stairs",Count:1b}}
execute if score @s glib.itemId matches 275 run summon item ~ ~ ~ {Item:{id:"minecraft:dark_oak_trapdoor",Count:1b}}
execute if score @s glib.itemId matches 276 run summon item ~ ~ ~ {Item:{id:"minecraft:dark_oak_wood",Count:1b}}
execute if score @s glib.itemId matches 277 run summon item ~ ~ ~ {Item:{id:"minecraft:dark_prismarine",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
