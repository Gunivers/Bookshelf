execute if score @s glib.itemId matches 316 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:deepslate_tile_stairs","Count":1b}}
execute if score @s glib.itemId matches 317 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:deepslate_tile_wall","Count":1b}}
execute if score @s glib.itemId matches 318 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:deepslate_tiles","Count":1b}}
execute if score @s glib.itemId matches 319 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:detector_rail","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
