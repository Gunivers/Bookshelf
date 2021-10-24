execute if score @s glib.itemId matches 528 run summon item ~ ~ ~ {Item:{id:"minecraft:lantern",Count:1b}}
execute if score @s glib.itemId matches 529 run summon item ~ ~ ~ {Item:{id:"minecraft:lapis_block",Count:1b}}
execute if score @s glib.itemId matches 530 run summon item ~ ~ ~ {Item:{id:"minecraft:lapis_lazuli",Count:1b}}
execute if score @s glib.itemId matches 531 run summon item ~ ~ ~ {Item:{id:"minecraft:lapis_ore",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
