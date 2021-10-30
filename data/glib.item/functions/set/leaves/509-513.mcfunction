execute if score @s glib.itemId matches 509 run summon item ~ ~ ~ {Item:{id:"minecraft:jukebox",Count:1b}}
execute if score @s glib.itemId matches 510 run summon item ~ ~ ~ {Item:{id:"minecraft:jungle_boat",Count:1b}}
execute if score @s glib.itemId matches 511 run summon item ~ ~ ~ {Item:{id:"minecraft:jungle_button",Count:1b}}
execute if score @s glib.itemId matches 512 run summon item ~ ~ ~ {Item:{id:"minecraft:jungle_door",Count:1b}}
execute if score @s glib.itemId matches 513 run summon item ~ ~ ~ {Item:{id:"minecraft:jungle_fence",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
