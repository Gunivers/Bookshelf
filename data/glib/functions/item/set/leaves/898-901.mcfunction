execute if score @s glib.itemId matches 898 run summon item ~ ~ ~ {Item:{id:"minecraft:smooth_quartz_stairs",Count:1b}}
execute if score @s glib.itemId matches 899 run summon item ~ ~ ~ {Item:{id:"minecraft:smooth_red_sandstone",Count:1b}}
execute if score @s glib.itemId matches 900 run summon item ~ ~ ~ {Item:{id:"minecraft:smooth_red_sandstone_slab",Count:1b}}
execute if score @s glib.itemId matches 901 run summon item ~ ~ ~ {Item:{id:"minecraft:smooth_red_sandstone_stairs",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
