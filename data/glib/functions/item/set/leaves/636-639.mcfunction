execute if score @s glib.itemId matches 636 run summon item ~ ~ ~ {Item:{id:"minecraft:music_disc_mellohi",Count:1b}}
execute if score @s glib.itemId matches 637 run summon item ~ ~ ~ {Item:{id:"minecraft:music_disc_pigstep",Count:1b}}
execute if score @s glib.itemId matches 638 run summon item ~ ~ ~ {Item:{id:"minecraft:music_disc_stal",Count:1b}}
execute if score @s glib.itemId matches 639 run summon item ~ ~ ~ {Item:{id:"minecraft:music_disc_strad",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
