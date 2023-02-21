execute if score @s bs.item.id matches 946 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:smooth_red_sandstone","Count":1b}}
execute if score @s bs.item.id matches 947 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:smooth_red_sandstone_slab","Count":1b}}
execute if score @s bs.item.id matches 948 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:smooth_red_sandstone_stairs","Count":1b}}
execute if score @s bs.item.id matches 949 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:smooth_sandstone","Count":1b}}
execute if score @s bs.item.id matches 950 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:smooth_sandstone_slab","Count":1b}}
execute if score @s bs.item.id matches 951 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:smooth_sandstone_stairs","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
