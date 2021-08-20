execute if score @s glib.itemId matches 772 run summon item ~ ~ ~ {Item:{id:"minecraft:powder_snow_bucket",Count:1b}}
execute if score @s glib.itemId matches 773 run summon item ~ ~ ~ {Item:{id:"minecraft:powered_rail",Count:1b}}
execute if score @s glib.itemId matches 774 run summon item ~ ~ ~ {Item:{id:"minecraft:prismarine",Count:1b}}
execute if score @s glib.itemId matches 775 run summon item ~ ~ ~ {Item:{id:"minecraft:prismarine_brick_slab",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
