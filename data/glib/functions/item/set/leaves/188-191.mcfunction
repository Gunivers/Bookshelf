execute if score @s glib.itemId matches 188 run summon item ~ ~ ~ {Item:{id:"minecraft:cobblestone_stairs",Count:1b}}
execute if score @s glib.itemId matches 189 run summon item ~ ~ ~ {Item:{id:"minecraft:cobblestone_wall",Count:1b}}
execute if score @s glib.itemId matches 190 run summon item ~ ~ ~ {Item:{id:"minecraft:cobweb",Count:1b}}
execute if score @s glib.itemId matches 191 run summon item ~ ~ ~ {Item:{id:"minecraft:cocoa_beans",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
