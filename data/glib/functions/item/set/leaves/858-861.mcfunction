execute if score @s glib.itemId matches 858 run summon item ~ ~ ~ {Item:{id:"minecraft:rooted_dirt",Count:1b}}
execute if score @s glib.itemId matches 859 run summon item ~ ~ ~ {Item:{id:"minecraft:rose_bush",Count:1b}}
execute if score @s glib.itemId matches 860 run summon item ~ ~ ~ {Item:{id:"minecraft:rotten_flesh",Count:1b}}
execute if score @s glib.itemId matches 861 run summon item ~ ~ ~ {Item:{id:"minecraft:saddle",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
