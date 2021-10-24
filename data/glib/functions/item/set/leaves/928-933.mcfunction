execute if score @s glib.itemId matches 928 run summon item ~ ~ ~ {Item:{id:"minecraft:spruce_log",Count:1b}}
execute if score @s glib.itemId matches 929 run summon item ~ ~ ~ {Item:{id:"minecraft:spruce_planks",Count:1b}}
execute if score @s glib.itemId matches 930 run summon item ~ ~ ~ {Item:{id:"minecraft:spruce_pressure_plate",Count:1b}}
execute if score @s glib.itemId matches 931 run summon item ~ ~ ~ {Item:{id:"minecraft:spruce_sapling",Count:1b}}
execute if score @s glib.itemId matches 932 run summon item ~ ~ ~ {Item:{id:"minecraft:spruce_sign",Count:1b}}
execute if score @s glib.itemId matches 933 run summon item ~ ~ ~ {Item:{id:"minecraft:spruce_slab",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
