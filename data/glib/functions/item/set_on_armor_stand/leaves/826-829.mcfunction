execute if score @s glib.itemId matches 826 run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:1b,Marker:1b,Invisible:0b,Small:1b,Tags:["glib.new","glib"],HandItems:[{id:"minecraft:red_bed",Count:1b}]}
execute if score @s glib.itemId matches 827 run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:1b,Marker:1b,Invisible:0b,Small:1b,Tags:["glib.new","glib"],HandItems:[{id:"minecraft:red_candle",Count:1b}]}
execute if score @s glib.itemId matches 828 run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:1b,Marker:1b,Invisible:0b,Small:1b,Tags:["glib.new","glib"],HandItems:[{id:"minecraft:red_carpet",Count:1b}]}
execute if score @s glib.itemId matches 829 run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:1b,Marker:1b,Invisible:0b,Small:1b,Tags:["glib.new","glib"],HandItems:[{id:"minecraft:red_concrete",Count:1b}]}
execute at @s run scoreboard players operation @e[type=armor_stand,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
