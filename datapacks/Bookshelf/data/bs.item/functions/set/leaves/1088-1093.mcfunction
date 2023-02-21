execute if score @s bs.item.id matches 1088 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:waxed_exposed_cut_copper","Count":1b}}
execute if score @s bs.item.id matches 1089 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:waxed_exposed_cut_copper_slab","Count":1b}}
execute if score @s bs.item.id matches 1090 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:waxed_exposed_cut_copper_stairs","Count":1b}}
execute if score @s bs.item.id matches 1091 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:waxed_oxidized_copper","Count":1b}}
execute if score @s bs.item.id matches 1092 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:waxed_oxidized_cut_copper","Count":1b}}
execute if score @s bs.item.id matches 1093 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:waxed_oxidized_cut_copper_slab","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
