execute if score @s glib.itemId matches 541 run summon item ~ ~ ~ {Item:{id:"minecraft:leather_leggings",Count:1b}}
execute if score @s glib.itemId matches 542 run summon item ~ ~ ~ {Item:{id:"minecraft:lectern",Count:1b}}
execute if score @s glib.itemId matches 543 run summon item ~ ~ ~ {Item:{id:"minecraft:lever",Count:1b}}
execute if score @s glib.itemId matches 544 run summon item ~ ~ ~ {Item:{id:"minecraft:light",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
