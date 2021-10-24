execute if score @s glib.itemId matches 590 run summon item ~ ~ ~ {Item:{id:"minecraft:llama_spawn_egg",Count:1b}}
execute if score @s glib.itemId matches 591 run summon item ~ ~ ~ {Item:{id:"minecraft:lodestone",Count:1b}}
execute if score @s glib.itemId matches 592 run summon item ~ ~ ~ {Item:{id:"minecraft:loom",Count:1b}}
execute if score @s glib.itemId matches 593 run summon item ~ ~ ~ {Item:{id:"minecraft:magenta_banner",Count:1b}}
execute if score @s glib.itemId matches 594 run summon item ~ ~ ~ {Item:{id:"minecraft:magenta_bed",Count:1b}}
execute if score @s glib.itemId matches 595 run summon item ~ ~ ~ {Item:{id:"minecraft:magenta_candle",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
