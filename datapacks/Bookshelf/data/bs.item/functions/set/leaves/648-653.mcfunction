execute if score @s bs.item.id matches 648 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:mossy_cobblestone_slab","Count":1b}}
execute if score @s bs.item.id matches 649 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:mossy_cobblestone_stairs","Count":1b}}
execute if score @s bs.item.id matches 650 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:mossy_cobblestone_wall","Count":1b}}
execute if score @s bs.item.id matches 651 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:mossy_stone_brick_slab","Count":1b}}
execute if score @s bs.item.id matches 652 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:mossy_stone_brick_stairs","Count":1b}}
execute if score @s bs.item.id matches 653 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:mossy_stone_brick_wall","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
