execute if score @s bs.item.id matches 56 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:birch_chest_boat","Count":1b}}
execute if score @s bs.item.id matches 57 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:birch_door","Count":1b}}
execute if score @s bs.item.id matches 58 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:birch_fence","Count":1b}}
execute if score @s bs.item.id matches 59 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:birch_fence_gate","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
