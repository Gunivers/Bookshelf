execute if score @s glib.itemId matches 902 run summon item ~ ~ ~ {Item:{id:"minecraft:smooth_sandstone",Count:1b}}
execute if score @s glib.itemId matches 903 run summon item ~ ~ ~ {Item:{id:"minecraft:smooth_sandstone_slab",Count:1b}}
execute if score @s glib.itemId matches 904 run summon item ~ ~ ~ {Item:{id:"minecraft:smooth_sandstone_stairs",Count:1b}}
execute if score @s glib.itemId matches 905 run summon item ~ ~ ~ {Item:{id:"minecraft:smooth_stone",Count:1b}}
execute if score @s glib.itemId matches 906 run summon item ~ ~ ~ {Item:{id:"minecraft:smooth_stone_slab",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
