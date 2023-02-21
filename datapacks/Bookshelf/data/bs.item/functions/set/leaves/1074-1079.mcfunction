execute if score @s bs.item.id matches 1074 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:warped_pressure_plate","Count":1b}}
execute if score @s bs.item.id matches 1075 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:warped_roots","Count":1b}}
execute if score @s bs.item.id matches 1076 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:warped_sign","Count":1b}}
execute if score @s bs.item.id matches 1077 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:warped_slab","Count":1b}}
execute if score @s bs.item.id matches 1078 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:warped_stairs","Count":1b}}
execute if score @s bs.item.id matches 1079 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:warped_stem","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
