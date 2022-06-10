execute if score @s glib.itemId matches 302 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:deepslate","Count":1b}}
execute if score @s glib.itemId matches 303 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:deepslate_brick_slab","Count":1b}}
execute if score @s glib.itemId matches 304 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:deepslate_brick_stairs","Count":1b}}
execute if score @s glib.itemId matches 305 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:deepslate_brick_wall","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
