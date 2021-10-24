execute if score @s glib.itemId matches 820 run summon item ~ ~ ~ {Item:{id:"minecraft:raw_copper_block",Count:1b}}
execute if score @s glib.itemId matches 821 run summon item ~ ~ ~ {Item:{id:"minecraft:raw_gold",Count:1b}}
execute if score @s glib.itemId matches 822 run summon item ~ ~ ~ {Item:{id:"minecraft:raw_gold_block",Count:1b}}
execute if score @s glib.itemId matches 823 run summon item ~ ~ ~ {Item:{id:"minecraft:raw_iron",Count:1b}}
execute if score @s glib.itemId matches 824 run summon item ~ ~ ~ {Item:{id:"minecraft:raw_iron_block",Count:1b}}
execute if score @s glib.itemId matches 825 run summon item ~ ~ ~ {Item:{id:"minecraft:red_banner",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
