execute if score @s glib.itemId matches 618 run summon item ~ ~ ~ {Item:{id:"minecraft:moss_block",Count:1b}}
execute if score @s glib.itemId matches 619 run summon item ~ ~ ~ {Item:{id:"minecraft:moss_carpet",Count:1b}}
execute if score @s glib.itemId matches 620 run summon item ~ ~ ~ {Item:{id:"minecraft:mossy_cobblestone",Count:1b}}
execute if score @s glib.itemId matches 621 run summon item ~ ~ ~ {Item:{id:"minecraft:mossy_cobblestone_slab",Count:1b}}
execute if score @s glib.itemId matches 622 run summon item ~ ~ ~ {Item:{id:"minecraft:mossy_cobblestone_stairs",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
