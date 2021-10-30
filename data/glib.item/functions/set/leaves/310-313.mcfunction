execute if score @s glib.itemId matches 310 run summon item ~ ~ ~ {Item:{id:"minecraft:deepslate_redstone_ore",Count:1b}}
execute if score @s glib.itemId matches 311 run summon item ~ ~ ~ {Item:{id:"minecraft:deepslate_tile_slab",Count:1b}}
execute if score @s glib.itemId matches 312 run summon item ~ ~ ~ {Item:{id:"minecraft:deepslate_tile_stairs",Count:1b}}
execute if score @s glib.itemId matches 313 run summon item ~ ~ ~ {Item:{id:"minecraft:deepslate_tile_wall",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
