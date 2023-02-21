execute if score @s bs.item.id matches 117 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:brewing_stand","Count":1b}}
execute if score @s bs.item.id matches 118 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:brick","Count":1b}}
execute if score @s bs.item.id matches 119 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:brick_slab","Count":1b}}
execute if score @s bs.item.id matches 120 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:brick_stairs","Count":1b}}
execute if score @s bs.item.id matches 121 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:brick_wall","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
