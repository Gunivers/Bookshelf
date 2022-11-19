execute if score @s bs.itemId matches 316 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:deepslate_tile_stairs","Count":1b}}
execute if score @s bs.itemId matches 317 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:deepslate_tile_wall","Count":1b}}
execute if score @s bs.itemId matches 318 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:deepslate_tiles","Count":1b}}
execute if score @s bs.itemId matches 319 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:detector_rail","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
