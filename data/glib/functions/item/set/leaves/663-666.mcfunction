execute if score @s glib.itemId matches 663 run summon item ~ ~ ~ {Item:{id:"minecraft:netherite_hoe",Count:1b}}
execute if score @s glib.itemId matches 664 run summon item ~ ~ ~ {Item:{id:"minecraft:netherite_ingot",Count:1b}}
execute if score @s glib.itemId matches 665 run summon item ~ ~ ~ {Item:{id:"minecraft:netherite_leggings",Count:1b}}
execute if score @s glib.itemId matches 666 run summon item ~ ~ ~ {Item:{id:"minecraft:netherite_pickaxe",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
