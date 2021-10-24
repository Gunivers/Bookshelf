execute if score @s glib.itemId matches 802 run summon item ~ ~ ~ {Item:{id:"minecraft:purpur_block",Count:1b}}
execute if score @s glib.itemId matches 803 run summon item ~ ~ ~ {Item:{id:"minecraft:purpur_pillar",Count:1b}}
execute if score @s glib.itemId matches 804 run summon item ~ ~ ~ {Item:{id:"minecraft:purpur_slab",Count:1b}}
execute if score @s glib.itemId matches 805 run summon item ~ ~ ~ {Item:{id:"minecraft:purpur_stairs",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
