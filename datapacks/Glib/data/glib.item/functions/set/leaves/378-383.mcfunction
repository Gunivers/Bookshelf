execute if score @s glib.itemId matches 378 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:exposed_cut_copper_slab","Count":1b}}
execute if score @s glib.itemId matches 379 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:exposed_cut_copper_stairs","Count":1b}}
execute if score @s glib.itemId matches 380 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:farmland","Count":1b}}
execute if score @s glib.itemId matches 381 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:feather","Count":1b}}
execute if score @s glib.itemId matches 382 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:fermented_spider_eye","Count":1b}}
execute if score @s glib.itemId matches 383 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:fern","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
