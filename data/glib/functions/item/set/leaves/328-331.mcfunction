execute if score @s glib.itemId matches 328 run summon item ~ ~ ~ {Item:{id:"minecraft:diamond_sword",Count:1b}}
execute if score @s glib.itemId matches 329 run summon item ~ ~ ~ {Item:{id:"minecraft:diorite",Count:1b}}
execute if score @s glib.itemId matches 330 run summon item ~ ~ ~ {Item:{id:"minecraft:diorite_slab",Count:1b}}
execute if score @s glib.itemId matches 331 run summon item ~ ~ ~ {Item:{id:"minecraft:diorite_stairs",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
