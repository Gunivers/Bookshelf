execute if score @s glib.itemId matches 1016 run summon item ~ ~ ~ {Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1b}}
execute if score @s glib.itemId matches 1017 run summon item ~ ~ ~ {Item:{id:"minecraft:warped_hyphae",Count:1b}}
execute if score @s glib.itemId matches 1018 run summon item ~ ~ ~ {Item:{id:"minecraft:warped_nylium",Count:1b}}
execute if score @s glib.itemId matches 1019 run summon item ~ ~ ~ {Item:{id:"minecraft:warped_planks",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
