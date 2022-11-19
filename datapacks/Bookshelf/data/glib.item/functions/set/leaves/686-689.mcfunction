execute if score @s bs.itemId matches 686 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:nether_brick_stairs","Count":1b}}
execute if score @s bs.itemId matches 687 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:nether_brick_wall","Count":1b}}
execute if score @s bs.itemId matches 688 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:nether_bricks","Count":1b}}
execute if score @s bs.itemId matches 689 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:nether_gold_ore","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
