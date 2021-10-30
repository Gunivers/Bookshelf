execute if score @s glib.itemId matches 854 run summon item ~ ~ ~ {Item:{id:"minecraft:redstone_torch",Count:1b}}
execute if score @s glib.itemId matches 855 run summon item ~ ~ ~ {Item:{id:"minecraft:repeater",Count:1b}}
execute if score @s glib.itemId matches 856 run summon item ~ ~ ~ {Item:{id:"minecraft:repeating_command_block",Count:1b}}
execute if score @s glib.itemId matches 857 run summon item ~ ~ ~ {Item:{id:"minecraft:respawn_anchor",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
