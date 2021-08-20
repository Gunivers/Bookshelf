execute if score @s glib.itemId matches 505 run summon item ~ ~ ~ {Item:{id:"minecraft:iron_trapdoor",Count:1b}}
execute if score @s glib.itemId matches 506 run summon item ~ ~ ~ {Item:{id:"minecraft:item_frame",Count:1b}}
execute if score @s glib.itemId matches 507 run summon item ~ ~ ~ {Item:{id:"minecraft:jack_o_lantern",Count:1b}}
execute if score @s glib.itemId matches 508 run summon item ~ ~ ~ {Item:{id:"minecraft:jigsaw",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
