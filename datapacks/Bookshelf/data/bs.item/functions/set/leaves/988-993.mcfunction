execute if score @s bs.item.id matches 988 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:sticky_piston","Count":1b}}
execute if score @s bs.item.id matches 989 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:stone","Count":1b}}
execute if score @s bs.item.id matches 990 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:stone_axe","Count":1b}}
execute if score @s bs.item.id matches 991 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:stone_brick_slab","Count":1b}}
execute if score @s bs.item.id matches 992 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:stone_brick_stairs","Count":1b}}
execute if score @s bs.item.id matches 993 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:stone_brick_wall","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
