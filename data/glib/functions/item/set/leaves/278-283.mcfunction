execute if score @s glib.itemId matches 278 run summon item ~ ~ ~ {Item:{id:"minecraft:dark_prismarine_slab",Count:1b}}
execute if score @s glib.itemId matches 279 run summon item ~ ~ ~ {Item:{id:"minecraft:dark_prismarine_stairs",Count:1b}}
execute if score @s glib.itemId matches 280 run summon item ~ ~ ~ {Item:{id:"minecraft:daylight_detector",Count:1b}}
execute if score @s glib.itemId matches 281 run summon item ~ ~ ~ {Item:{id:"minecraft:dead_brain_coral",Count:1b}}
execute if score @s glib.itemId matches 282 run summon item ~ ~ ~ {Item:{id:"minecraft:dead_brain_coral_block",Count:1b}}
execute if score @s glib.itemId matches 283 run summon item ~ ~ ~ {Item:{id:"minecraft:dead_brain_coral_fan",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
