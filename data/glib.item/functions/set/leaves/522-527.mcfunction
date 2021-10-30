execute if score @s glib.itemId matches 522 run summon item ~ ~ ~ {Item:{id:"minecraft:jungle_stairs",Count:1b}}
execute if score @s glib.itemId matches 523 run summon item ~ ~ ~ {Item:{id:"minecraft:jungle_trapdoor",Count:1b}}
execute if score @s glib.itemId matches 524 run summon item ~ ~ ~ {Item:{id:"minecraft:jungle_wood",Count:1b}}
execute if score @s glib.itemId matches 525 run summon item ~ ~ ~ {Item:{id:"minecraft:kelp",Count:1b}}
execute if score @s glib.itemId matches 526 run summon item ~ ~ ~ {Item:{id:"minecraft:knowledge_book",Count:1b}}
execute if score @s glib.itemId matches 527 run summon item ~ ~ ~ {Item:{id:"minecraft:ladder",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
