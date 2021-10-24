execute if score @s glib.itemId matches 894 run summon item ~ ~ ~ {Item:{id:"minecraft:smoker",Count:1b}}
execute if score @s glib.itemId matches 895 run summon item ~ ~ ~ {Item:{id:"minecraft:smooth_basalt",Count:1b}}
execute if score @s glib.itemId matches 896 run summon item ~ ~ ~ {Item:{id:"minecraft:smooth_quartz",Count:1b}}
execute if score @s glib.itemId matches 897 run summon item ~ ~ ~ {Item:{id:"minecraft:smooth_quartz_slab",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
