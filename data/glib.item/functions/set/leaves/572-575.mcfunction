execute if score @s glib.itemId matches 572 run summon item ~ ~ ~ {Item:{id:"minecraft:lightning_rod",Count:1b}}
execute if score @s glib.itemId matches 573 run summon item ~ ~ ~ {Item:{id:"minecraft:lilac",Count:1b}}
execute if score @s glib.itemId matches 574 run summon item ~ ~ ~ {Item:{id:"minecraft:lily_of_the_valley",Count:1b}}
execute if score @s glib.itemId matches 575 run summon item ~ ~ ~ {Item:{id:"minecraft:lily_pad",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
