execute if score @s bs.item.id matches 245 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:cut_copper_stairs","Count":1b}}
execute if score @s bs.item.id matches 246 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:cut_red_sandstone","Count":1b}}
execute if score @s bs.item.id matches 247 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:cut_red_sandstone_slab","Count":1b}}
execute if score @s bs.item.id matches 248 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:cut_sandstone","Count":1b}}
execute if score @s bs.item.id matches 249 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:cut_sandstone_slab","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
