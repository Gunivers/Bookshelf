execute if score @s glib.itemId matches 888 run summon item ~ ~ ~ {Item:{id:"minecraft:slime_ball",Count:1b}}
execute if score @s glib.itemId matches 889 run summon item ~ ~ ~ {Item:{id:"minecraft:slime_block",Count:1b}}
execute if score @s glib.itemId matches 890 run summon item ~ ~ ~ {Item:{id:"minecraft:slime_spawn_egg",Count:1b}}
execute if score @s glib.itemId matches 891 run summon item ~ ~ ~ {Item:{id:"minecraft:small_amethyst_bud",Count:1b}}
execute if score @s glib.itemId matches 892 run summon item ~ ~ ~ {Item:{id:"minecraft:small_dripleaf",Count:1b}}
execute if score @s glib.itemId matches 893 run summon item ~ ~ ~ {Item:{id:"minecraft:smithing_table",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
