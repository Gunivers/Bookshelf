execute if score @s glib.itemId matches 915 run summon item ~ ~ ~ {Item:{id:"minecraft:spawner",Count:1b}}
execute if score @s glib.itemId matches 916 run summon item ~ ~ ~ {Item:{id:"minecraft:spectral_arrow",Count:1b}}
execute if score @s glib.itemId matches 917 run summon item ~ ~ ~ {Item:{id:"minecraft:spider_eye",Count:1b}}
execute if score @s glib.itemId matches 918 run summon item ~ ~ ~ {Item:{id:"minecraft:spider_spawn_egg",Count:1b}}
execute if score @s glib.itemId matches 919 run summon item ~ ~ ~ {Item:{id:"minecraft:splash_potion",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
