execute if score @s glib.itemId matches 430 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:golden_helmet","Count":1b}}
execute if score @s glib.itemId matches 431 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:golden_hoe","Count":1b}}
execute if score @s glib.itemId matches 432 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:golden_horse_armor","Count":1b}}
execute if score @s glib.itemId matches 433 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:golden_leggings","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
