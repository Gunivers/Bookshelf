execute if score @s bs.item.id matches 184 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:coarse_dirt","Count":1b}}
execute if score @s bs.item.id matches 185 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:cobbled_deepslate","Count":1b}}
execute if score @s bs.item.id matches 186 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:cobbled_deepslate_slab","Count":1b}}
execute if score @s bs.item.id matches 187 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:cobbled_deepslate_stairs","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
