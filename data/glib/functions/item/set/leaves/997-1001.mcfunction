execute if score @s glib.itemId matches 997 run summon item ~ ~ ~ {Item:{id:"minecraft:tropical_fish_spawn_egg",Count:1b}}
execute if score @s glib.itemId matches 998 run summon item ~ ~ ~ {Item:{id:"minecraft:tube_coral",Count:1b}}
execute if score @s glib.itemId matches 999 run summon item ~ ~ ~ {Item:{id:"minecraft:tube_coral_block",Count:1b}}
execute if score @s glib.itemId matches 1000 run summon item ~ ~ ~ {Item:{id:"minecraft:tube_coral_fan",Count:1b}}
execute if score @s glib.itemId matches 1001 run summon item ~ ~ ~ {Item:{id:"minecraft:tuff",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
