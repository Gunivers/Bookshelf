execute if score @s bs.item.id matches 362 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:end_portal_frame","Count":1b}}
execute if score @s bs.item.id matches 363 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:end_rod","Count":1b}}
execute if score @s bs.item.id matches 364 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:end_stone","Count":1b}}
execute if score @s bs.item.id matches 365 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:end_stone_brick_slab","Count":1b}}
execute if score @s bs.item.id matches 366 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:end_stone_brick_stairs","Count":1b}}
execute if score @s bs.item.id matches 367 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:end_stone_brick_wall","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
