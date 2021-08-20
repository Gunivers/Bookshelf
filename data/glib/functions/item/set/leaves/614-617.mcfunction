execute if score @s glib.itemId matches 614 run summon item ~ ~ ~ {Item:{id:"minecraft:milk_bucket",Count:1b}}
execute if score @s glib.itemId matches 615 run summon item ~ ~ ~ {Item:{id:"minecraft:minecart",Count:1b}}
execute if score @s glib.itemId matches 616 run summon item ~ ~ ~ {Item:{id:"minecraft:mojang_banner_pattern",Count:1b}}
execute if score @s glib.itemId matches 617 run summon item ~ ~ ~ {Item:{id:"minecraft:mooshroom_spawn_egg",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
