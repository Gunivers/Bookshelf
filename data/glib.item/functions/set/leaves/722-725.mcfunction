execute if score @s glib.itemId matches 722 run summon item ~ ~ ~ {Item:{id:"minecraft:pillager_spawn_egg",Count:1b}}
execute if score @s glib.itemId matches 723 run summon item ~ ~ ~ {Item:{id:"minecraft:pink_banner",Count:1b}}
execute if score @s glib.itemId matches 724 run summon item ~ ~ ~ {Item:{id:"minecraft:pink_bed",Count:1b}}
execute if score @s glib.itemId matches 725 run summon item ~ ~ ~ {Item:{id:"minecraft:pink_candle",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
