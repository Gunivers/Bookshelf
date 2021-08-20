execute if score @s glib.itemId matches 305 run summon item ~ ~ ~ {Item:{id:"minecraft:deepslate_diamond_ore",Count:1b}}
execute if score @s glib.itemId matches 306 run summon item ~ ~ ~ {Item:{id:"minecraft:deepslate_emerald_ore",Count:1b}}
execute if score @s glib.itemId matches 307 run summon item ~ ~ ~ {Item:{id:"minecraft:deepslate_gold_ore",Count:1b}}
execute if score @s glib.itemId matches 308 run summon item ~ ~ ~ {Item:{id:"minecraft:deepslate_iron_ore",Count:1b}}
execute if score @s glib.itemId matches 309 run summon item ~ ~ ~ {Item:{id:"minecraft:deepslate_lapis_ore",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
