execute if score @s glib.itemId matches 793 run summon item ~ ~ ~ {Item:{id:"minecraft:purple_concrete",Count:1b}}
execute if score @s glib.itemId matches 794 run summon item ~ ~ ~ {Item:{id:"minecraft:purple_concrete_powder",Count:1b}}
execute if score @s glib.itemId matches 795 run summon item ~ ~ ~ {Item:{id:"minecraft:purple_dye",Count:1b}}
execute if score @s glib.itemId matches 796 run summon item ~ ~ ~ {Item:{id:"minecraft:purple_glazed_terracotta",Count:1b}}
execute if score @s glib.itemId matches 797 run summon item ~ ~ ~ {Item:{id:"minecraft:purple_shulker_box",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
