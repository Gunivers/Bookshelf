execute if score @s glib.itemId matches 993 run summon item ~ ~ ~ {Item:{id:"minecraft:trident",Count:1b}}
execute if score @s glib.itemId matches 994 run summon item ~ ~ ~ {Item:{id:"minecraft:tripwire_hook",Count:1b}}
execute if score @s glib.itemId matches 995 run summon item ~ ~ ~ {Item:{id:"minecraft:tropical_fish",Count:1b}}
execute if score @s glib.itemId matches 996 run summon item ~ ~ ~ {Item:{id:"minecraft:tropical_fish_bucket",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
