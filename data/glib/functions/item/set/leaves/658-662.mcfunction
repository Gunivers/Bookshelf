execute if score @s glib.itemId matches 658 run summon item ~ ~ ~ {Item:{id:"minecraft:netherite_axe",Count:1b}}
execute if score @s glib.itemId matches 659 run summon item ~ ~ ~ {Item:{id:"minecraft:netherite_block",Count:1b}}
execute if score @s glib.itemId matches 660 run summon item ~ ~ ~ {Item:{id:"minecraft:netherite_boots",Count:1b}}
execute if score @s glib.itemId matches 661 run summon item ~ ~ ~ {Item:{id:"minecraft:netherite_chestplate",Count:1b}}
execute if score @s glib.itemId matches 662 run summon item ~ ~ ~ {Item:{id:"minecraft:netherite_helmet",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
