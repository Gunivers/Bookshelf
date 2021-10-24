execute if score @s glib.itemId matches 848 run summon item ~ ~ ~ {Item:{id:"minecraft:red_tulip",Count:1b}}
execute if score @s glib.itemId matches 849 run summon item ~ ~ ~ {Item:{id:"minecraft:red_wool",Count:1b}}
execute if score @s glib.itemId matches 850 run summon item ~ ~ ~ {Item:{id:"minecraft:redstone",Count:1b}}
execute if score @s glib.itemId matches 851 run summon item ~ ~ ~ {Item:{id:"minecraft:redstone_block",Count:1b}}
execute if score @s glib.itemId matches 852 run summon item ~ ~ ~ {Item:{id:"minecraft:redstone_lamp",Count:1b}}
execute if score @s glib.itemId matches 853 run summon item ~ ~ ~ {Item:{id:"minecraft:redstone_ore",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
