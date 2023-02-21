execute if score @s bs.item.id matches 4 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:acacia_fence","Count":1b}}
execute if score @s bs.item.id matches 5 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:acacia_fence_gate","Count":1b}}
execute if score @s bs.item.id matches 6 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:acacia_leaves","Count":1b}}
execute if score @s bs.item.id matches 7 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:acacia_log","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
