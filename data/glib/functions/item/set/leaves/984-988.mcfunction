execute if score @s glib.itemId matches 984 run summon item ~ ~ ~ {Item:{id:"minecraft:terracotta",Count:1b}}
execute if score @s glib.itemId matches 985 run summon item ~ ~ ~ {Item:{id:"minecraft:tinted_glass",Count:1b}}
execute if score @s glib.itemId matches 986 run summon item ~ ~ ~ {Item:{id:"minecraft:tipped_arrow",Count:1b}}
execute if score @s glib.itemId matches 987 run summon item ~ ~ ~ {Item:{id:"minecraft:tnt",Count:1b}}
execute if score @s glib.itemId matches 988 run summon item ~ ~ ~ {Item:{id:"minecraft:tnt_minecart",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
