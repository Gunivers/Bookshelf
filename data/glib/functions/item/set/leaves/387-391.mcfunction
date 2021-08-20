execute if score @s glib.itemId matches 387 run summon item ~ ~ ~ {Item:{id:"minecraft:flint",Count:1b}}
execute if score @s glib.itemId matches 388 run summon item ~ ~ ~ {Item:{id:"minecraft:flint_and_steel",Count:1b}}
execute if score @s glib.itemId matches 389 run summon item ~ ~ ~ {Item:{id:"minecraft:flower_banner_pattern",Count:1b}}
execute if score @s glib.itemId matches 390 run summon item ~ ~ ~ {Item:{id:"minecraft:flower_pot",Count:1b}}
execute if score @s glib.itemId matches 391 run summon item ~ ~ ~ {Item:{id:"minecraft:flowering_azalea",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
