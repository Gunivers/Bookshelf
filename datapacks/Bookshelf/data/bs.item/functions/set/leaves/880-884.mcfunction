execute if score @s bs.item.id matches 880 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:red_nether_bricks","Count":1b}}
execute if score @s bs.item.id matches 881 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:red_sand","Count":1b}}
execute if score @s bs.item.id matches 882 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:red_sandstone","Count":1b}}
execute if score @s bs.item.id matches 883 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:red_sandstone_slab","Count":1b}}
execute if score @s bs.item.id matches 884 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:red_sandstone_stairs","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
