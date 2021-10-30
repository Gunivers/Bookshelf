execute if score @s glib.itemId matches 482 run summon item ~ ~ ~ {Item:{id:"minecraft:infested_cobblestone",Count:1b}}
execute if score @s glib.itemId matches 483 run summon item ~ ~ ~ {Item:{id:"minecraft:infested_cracked_stone_bricks",Count:1b}}
execute if score @s glib.itemId matches 484 run summon item ~ ~ ~ {Item:{id:"minecraft:infested_deepslate",Count:1b}}
execute if score @s glib.itemId matches 485 run summon item ~ ~ ~ {Item:{id:"minecraft:infested_mossy_stone_bricks",Count:1b}}
execute if score @s glib.itemId matches 486 run summon item ~ ~ ~ {Item:{id:"minecraft:infested_stone",Count:1b}}
execute if score @s glib.itemId matches 487 run summon item ~ ~ ~ {Item:{id:"minecraft:infested_stone_bricks",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
