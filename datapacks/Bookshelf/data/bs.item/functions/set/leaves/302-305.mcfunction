execute if score @s bs.item.id matches 302 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:deepslate","Count":1b}}
execute if score @s bs.item.id matches 303 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:deepslate_brick_slab","Count":1b}}
execute if score @s bs.item.id matches 304 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:deepslate_brick_stairs","Count":1b}}
execute if score @s bs.item.id matches 305 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:deepslate_brick_wall","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
