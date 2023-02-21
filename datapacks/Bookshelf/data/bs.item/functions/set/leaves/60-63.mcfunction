execute if score @s bs.item.id matches 60 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:birch_leaves","Count":1b}}
execute if score @s bs.item.id matches 61 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:birch_log","Count":1b}}
execute if score @s bs.item.id matches 62 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:birch_planks","Count":1b}}
execute if score @s bs.item.id matches 63 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:birch_pressure_plate","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
