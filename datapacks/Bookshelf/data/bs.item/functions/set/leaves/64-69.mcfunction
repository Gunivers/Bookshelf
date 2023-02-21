execute if score @s bs.item.id matches 64 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:birch_sapling","Count":1b}}
execute if score @s bs.item.id matches 65 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:birch_sign","Count":1b}}
execute if score @s bs.item.id matches 66 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:birch_slab","Count":1b}}
execute if score @s bs.item.id matches 67 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:birch_stairs","Count":1b}}
execute if score @s bs.item.id matches 68 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:birch_trapdoor","Count":1b}}
execute if score @s bs.item.id matches 69 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:birch_wood","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
