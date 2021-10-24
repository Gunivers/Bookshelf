execute if score @s glib.itemId matches 360 run summon item ~ ~ ~ {Item:{id:"minecraft:end_stone_brick_stairs",Count:1b}}
execute if score @s glib.itemId matches 361 run summon item ~ ~ ~ {Item:{id:"minecraft:end_stone_brick_wall",Count:1b}}
execute if score @s glib.itemId matches 362 run summon item ~ ~ ~ {Item:{id:"minecraft:end_stone_bricks",Count:1b}}
execute if score @s glib.itemId matches 363 run summon item ~ ~ ~ {Item:{id:"minecraft:ender_chest",Count:1b}}
execute if score @s glib.itemId matches 364 run summon item ~ ~ ~ {Item:{id:"minecraft:ender_eye",Count:1b}}
execute if score @s glib.itemId matches 365 run summon item ~ ~ ~ {Item:{id:"minecraft:ender_pearl",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
