execute if score @s glib.itemId matches 610 run summon item ~ ~ ~ {Item:{id:"minecraft:medium_amethyst_bud",Count:1b}}
execute if score @s glib.itemId matches 611 run summon item ~ ~ ~ {Item:{id:"minecraft:melon",Count:1b}}
execute if score @s glib.itemId matches 612 run summon item ~ ~ ~ {Item:{id:"minecraft:melon_seeds",Count:1b}}
execute if score @s glib.itemId matches 613 run summon item ~ ~ ~ {Item:{id:"minecraft:melon_slice",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
