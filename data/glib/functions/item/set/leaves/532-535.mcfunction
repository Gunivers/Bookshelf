execute if score @s glib.itemId matches 532 run summon item ~ ~ ~ {Item:{id:"minecraft:large_amethyst_bud",Count:1b}}
execute if score @s glib.itemId matches 533 run summon item ~ ~ ~ {Item:{id:"minecraft:large_fern",Count:1b}}
execute if score @s glib.itemId matches 534 run summon item ~ ~ ~ {Item:{id:"minecraft:lava_bucket",Count:1b}}
execute if score @s glib.itemId matches 535 run summon item ~ ~ ~ {Item:{id:"minecraft:lead",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
