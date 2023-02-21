execute if score @s bs.item.id matches 624 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:mangrove_fence_gate","Count":1b}}
execute if score @s bs.item.id matches 625 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:mangrove_leaves","Count":1b}}
execute if score @s bs.item.id matches 626 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:mangrove_log","Count":1b}}
execute if score @s bs.item.id matches 627 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:mangrove_planks","Count":1b}}
execute if score @s bs.item.id matches 628 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:mangrove_pressure_plate","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
