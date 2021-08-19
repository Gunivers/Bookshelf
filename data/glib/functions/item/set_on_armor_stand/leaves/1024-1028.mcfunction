execute if score @s glib.itemId matches 1024 run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:1b,Marker:1b,Invisible:0b,Small:1b,Tags:["glib.new","glib"],HandItems:[{id:"minecraft:warped_stairs",Count:1b}]}
execute if score @s glib.itemId matches 1025 run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:1b,Marker:1b,Invisible:0b,Small:1b,Tags:["glib.new","glib"],HandItems:[{id:"minecraft:warped_stem",Count:1b}]}
execute if score @s glib.itemId matches 1026 run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:1b,Marker:1b,Invisible:0b,Small:1b,Tags:["glib.new","glib"],HandItems:[{id:"minecraft:warped_trapdoor",Count:1b}]}
execute if score @s glib.itemId matches 1027 run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:1b,Marker:1b,Invisible:0b,Small:1b,Tags:["glib.new","glib"],HandItems:[{id:"minecraft:warped_wart_block",Count:1b}]}
execute if score @s glib.itemId matches 1028 run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:1b,Marker:1b,Invisible:0b,Small:1b,Tags:["glib.new","glib"],HandItems:[{id:"minecraft:water_bucket",Count:1b}]}
execute at @s run scoreboard players operation @e[type=armor_stand,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
