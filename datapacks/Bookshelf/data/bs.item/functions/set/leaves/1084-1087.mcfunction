execute if score @s bs.itemId matches 1084 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:waxed_cut_copper","Count":1b}}
execute if score @s bs.itemId matches 1085 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:waxed_cut_copper_slab","Count":1b}}
execute if score @s bs.itemId matches 1086 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:waxed_cut_copper_stairs","Count":1b}}
execute if score @s bs.itemId matches 1087 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:waxed_exposed_copper","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
