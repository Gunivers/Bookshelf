execute if score @s glib.itemId matches 934 run summon item ~ ~ ~ {Item:{id:"minecraft:spruce_stairs",Count:1b}}
execute if score @s glib.itemId matches 935 run summon item ~ ~ ~ {Item:{id:"minecraft:spruce_trapdoor",Count:1b}}
execute if score @s glib.itemId matches 936 run summon item ~ ~ ~ {Item:{id:"minecraft:spruce_wood",Count:1b}}
execute if score @s glib.itemId matches 937 run summon item ~ ~ ~ {Item:{id:"minecraft:spyglass",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
