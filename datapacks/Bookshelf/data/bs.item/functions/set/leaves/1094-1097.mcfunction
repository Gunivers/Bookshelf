execute if score @s bs.item.id matches 1094 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:waxed_oxidized_cut_copper_stairs","Count":1b}}
execute if score @s bs.item.id matches 1095 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:waxed_weathered_copper","Count":1b}}
execute if score @s bs.item.id matches 1096 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:waxed_weathered_cut_copper","Count":1b}}
execute if score @s bs.item.id matches 1097 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:waxed_weathered_cut_copper_slab","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
