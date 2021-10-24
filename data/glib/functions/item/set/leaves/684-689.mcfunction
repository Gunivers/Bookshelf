execute if score @s glib.itemId matches 684 run summon item ~ ~ ~ {Item:{id:"minecraft:oak_stairs",Count:1b}}
execute if score @s glib.itemId matches 685 run summon item ~ ~ ~ {Item:{id:"minecraft:oak_trapdoor",Count:1b}}
execute if score @s glib.itemId matches 686 run summon item ~ ~ ~ {Item:{id:"minecraft:oak_wood",Count:1b}}
execute if score @s glib.itemId matches 687 run summon item ~ ~ ~ {Item:{id:"minecraft:observer",Count:1b}}
execute if score @s glib.itemId matches 688 run summon item ~ ~ ~ {Item:{id:"minecraft:obsidian",Count:1b}}
execute if score @s glib.itemId matches 689 run summon item ~ ~ ~ {Item:{id:"minecraft:ocelot_spawn_egg",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
