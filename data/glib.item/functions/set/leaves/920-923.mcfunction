execute if score @s glib.itemId matches 920 run summon item ~ ~ ~ {Item:{id:"minecraft:sponge",Count:1b}}
execute if score @s glib.itemId matches 921 run summon item ~ ~ ~ {Item:{id:"minecraft:spore_blossom",Count:1b}}
execute if score @s glib.itemId matches 922 run summon item ~ ~ ~ {Item:{id:"minecraft:spruce_boat",Count:1b}}
execute if score @s glib.itemId matches 923 run summon item ~ ~ ~ {Item:{id:"minecraft:spruce_button",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
