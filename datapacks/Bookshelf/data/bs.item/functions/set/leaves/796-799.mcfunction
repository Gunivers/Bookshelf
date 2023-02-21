execute if score @s bs.item.id matches 796 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:polished_blackstone_stairs","Count":1b}}
execute if score @s bs.item.id matches 797 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:polished_blackstone_wall","Count":1b}}
execute if score @s bs.item.id matches 798 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:polished_deepslate","Count":1b}}
execute if score @s bs.item.id matches 799 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:polished_deepslate_slab","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
