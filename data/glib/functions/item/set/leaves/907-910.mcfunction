execute if score @s glib.itemId matches 907 run summon item ~ ~ ~ {Item:{id:"minecraft:snow",Count:1b}}
execute if score @s glib.itemId matches 908 run summon item ~ ~ ~ {Item:{id:"minecraft:snow_block",Count:1b}}
execute if score @s glib.itemId matches 909 run summon item ~ ~ ~ {Item:{id:"minecraft:snowball",Count:1b}}
execute if score @s glib.itemId matches 910 run summon item ~ ~ ~ {Item:{id:"minecraft:soul_campfire",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
