execute if score @s bs.itemId matches 1098 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:waxed_weathered_cut_copper_stairs","Count":1b}}
execute if score @s bs.itemId matches 1099 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:weathered_copper","Count":1b}}
execute if score @s bs.itemId matches 1100 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:weathered_cut_copper","Count":1b}}
execute if score @s bs.itemId matches 1101 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:weathered_cut_copper_slab","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
