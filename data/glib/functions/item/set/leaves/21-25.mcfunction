execute if score @s glib.itemId matches 21 run summon item ~ ~ ~ {Item:{id:"minecraft:ancient_debris",Count:1b}}
execute if score @s glib.itemId matches 22 run summon item ~ ~ ~ {Item:{id:"minecraft:andesite",Count:1b}}
execute if score @s glib.itemId matches 23 run summon item ~ ~ ~ {Item:{id:"minecraft:andesite_slab",Count:1b}}
execute if score @s glib.itemId matches 24 run summon item ~ ~ ~ {Item:{id:"minecraft:andesite_stairs",Count:1b}}
execute if score @s glib.itemId matches 25 run summon item ~ ~ ~ {Item:{id:"minecraft:andesite_wall",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
