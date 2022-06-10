execute if score @s glib.itemId matches 326 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:diamond_hoe","Count":1b}}
execute if score @s glib.itemId matches 327 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:diamond_horse_armor","Count":1b}}
execute if score @s glib.itemId matches 328 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:diamond_leggings","Count":1b}}
execute if score @s glib.itemId matches 329 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:diamond_ore","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
