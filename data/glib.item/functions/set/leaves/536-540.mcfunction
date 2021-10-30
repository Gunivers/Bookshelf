execute if score @s glib.itemId matches 536 run summon item ~ ~ ~ {Item:{id:"minecraft:leather",Count:1b}}
execute if score @s glib.itemId matches 537 run summon item ~ ~ ~ {Item:{id:"minecraft:leather_boots",Count:1b}}
execute if score @s glib.itemId matches 538 run summon item ~ ~ ~ {Item:{id:"minecraft:leather_chestplate",Count:1b}}
execute if score @s glib.itemId matches 539 run summon item ~ ~ ~ {Item:{id:"minecraft:leather_helmet",Count:1b}}
execute if score @s glib.itemId matches 540 run summon item ~ ~ ~ {Item:{id:"minecraft:leather_horse_armor",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
