execute if score @s bs.itemId matches 362 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:end_portal_frame","Count":1b}}
execute if score @s bs.itemId matches 363 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:end_rod","Count":1b}}
execute if score @s bs.itemId matches 364 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:end_stone","Count":1b}}
execute if score @s bs.itemId matches 365 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:end_stone_brick_slab","Count":1b}}
execute if score @s bs.itemId matches 366 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:end_stone_brick_stairs","Count":1b}}
execute if score @s bs.itemId matches 367 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:end_stone_brick_wall","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
