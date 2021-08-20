execute if score @s glib.itemId matches 640 run summon item ~ ~ ~ {Item:{id:"minecraft:music_disc_wait",Count:1b}}
execute if score @s glib.itemId matches 641 run summon item ~ ~ ~ {Item:{id:"minecraft:music_disc_ward",Count:1b}}
execute if score @s glib.itemId matches 642 run summon item ~ ~ ~ {Item:{id:"minecraft:mutton",Count:1b}}
execute if score @s glib.itemId matches 643 run summon item ~ ~ ~ {Item:{id:"minecraft:mycelium",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
