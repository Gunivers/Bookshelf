execute if score @s glib.itemId matches 766 run summon item ~ ~ ~ {Item:{id:"minecraft:polished_granite_stairs",Count:1b}}
execute if score @s glib.itemId matches 767 run summon item ~ ~ ~ {Item:{id:"minecraft:popped_chorus_fruit",Count:1b}}
execute if score @s glib.itemId matches 768 run summon item ~ ~ ~ {Item:{id:"minecraft:poppy",Count:1b}}
execute if score @s glib.itemId matches 769 run summon item ~ ~ ~ {Item:{id:"minecraft:porkchop",Count:1b}}
execute if score @s glib.itemId matches 770 run summon item ~ ~ ~ {Item:{id:"minecraft:potato",Count:1b}}
execute if score @s glib.itemId matches 771 run summon item ~ ~ ~ {Item:{id:"minecraft:potion",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
