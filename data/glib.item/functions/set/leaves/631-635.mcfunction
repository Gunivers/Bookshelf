execute if score @s glib.itemId matches 631 run summon item ~ ~ ~ {Item:{id:"minecraft:music_disc_blocks",Count:1b}}
execute if score @s glib.itemId matches 632 run summon item ~ ~ ~ {Item:{id:"minecraft:music_disc_cat",Count:1b}}
execute if score @s glib.itemId matches 633 run summon item ~ ~ ~ {Item:{id:"minecraft:music_disc_chirp",Count:1b}}
execute if score @s glib.itemId matches 634 run summon item ~ ~ ~ {Item:{id:"minecraft:music_disc_far",Count:1b}}
execute if score @s glib.itemId matches 635 run summon item ~ ~ ~ {Item:{id:"minecraft:music_disc_mall",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
