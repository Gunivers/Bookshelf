execute if score @s glib.itemId matches 230 run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:1b,Marker:1b,Invisible:0b,Small:1b,Tags:["glib.new","glib"],HandItems:[{id:"minecraft:crimson_planks",Count:1b}]}
execute if score @s glib.itemId matches 231 run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:1b,Marker:1b,Invisible:0b,Small:1b,Tags:["glib.new","glib"],HandItems:[{id:"minecraft:crimson_pressure_plate",Count:1b}]}
execute if score @s glib.itemId matches 232 run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:1b,Marker:1b,Invisible:0b,Small:1b,Tags:["glib.new","glib"],HandItems:[{id:"minecraft:crimson_roots",Count:1b}]}
execute if score @s glib.itemId matches 233 run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:1b,Marker:1b,Invisible:0b,Small:1b,Tags:["glib.new","glib"],HandItems:[{id:"minecraft:crimson_sign",Count:1b}]}
execute at @s run scoreboard players operation @e[type=armor_stand,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
