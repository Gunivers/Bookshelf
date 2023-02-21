execute if score @s bs.item.id matches 378 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:exposed_cut_copper_slab","Count":1b}}
execute if score @s bs.item.id matches 379 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:exposed_cut_copper_stairs","Count":1b}}
execute if score @s bs.item.id matches 380 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:farmland","Count":1b}}
execute if score @s bs.item.id matches 381 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:feather","Count":1b}}
execute if score @s bs.item.id matches 382 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:fermented_spider_eye","Count":1b}}
execute if score @s bs.item.id matches 383 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:fern","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
