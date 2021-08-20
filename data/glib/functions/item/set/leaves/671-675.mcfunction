execute if score @s glib.itemId matches 671 run summon item ~ ~ ~ {Item:{id:"minecraft:note_block",Count:1b}}
execute if score @s glib.itemId matches 672 run summon item ~ ~ ~ {Item:{id:"minecraft:oak_boat",Count:1b}}
execute if score @s glib.itemId matches 673 run summon item ~ ~ ~ {Item:{id:"minecraft:oak_button",Count:1b}}
execute if score @s glib.itemId matches 674 run summon item ~ ~ ~ {Item:{id:"minecraft:oak_door",Count:1b}}
execute if score @s glib.itemId matches 675 run summon item ~ ~ ~ {Item:{id:"minecraft:oak_fence",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
