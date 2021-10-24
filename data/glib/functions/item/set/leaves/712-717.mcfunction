execute if score @s glib.itemId matches 712 run summon item ~ ~ ~ {Item:{id:"minecraft:paper",Count:1b}}
execute if score @s glib.itemId matches 713 run summon item ~ ~ ~ {Item:{id:"minecraft:parrot_spawn_egg",Count:1b}}
execute if score @s glib.itemId matches 714 run summon item ~ ~ ~ {Item:{id:"minecraft:peony",Count:1b}}
execute if score @s glib.itemId matches 715 run summon item ~ ~ ~ {Item:{id:"minecraft:petrified_oak_slab",Count:1b}}
execute if score @s glib.itemId matches 716 run summon item ~ ~ ~ {Item:{id:"minecraft:phantom_membrane",Count:1b}}
execute if score @s glib.itemId matches 717 run summon item ~ ~ ~ {Item:{id:"minecraft:phantom_spawn_egg",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
