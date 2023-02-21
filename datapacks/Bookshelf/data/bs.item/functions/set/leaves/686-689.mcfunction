execute if score @s bs.item.id matches 686 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:nether_brick_stairs","Count":1b}}
execute if score @s bs.item.id matches 687 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:nether_brick_wall","Count":1b}}
execute if score @s bs.item.id matches 688 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:nether_bricks","Count":1b}}
execute if score @s bs.item.id matches 689 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:nether_gold_ore","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
