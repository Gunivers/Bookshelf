execute if score @s bs.item.id matches 790 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:polished_blackstone_brick_stairs","Count":1b}}
execute if score @s bs.item.id matches 791 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:polished_blackstone_brick_wall","Count":1b}}
execute if score @s bs.item.id matches 792 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:polished_blackstone_bricks","Count":1b}}
execute if score @s bs.item.id matches 793 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:polished_blackstone_button","Count":1b}}
execute if score @s bs.item.id matches 794 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:polished_blackstone_pressure_plate","Count":1b}}
execute if score @s bs.item.id matches 795 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:polished_blackstone_slab","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
