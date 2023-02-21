execute if score @s bs.item.id matches 800 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:polished_deepslate_stairs","Count":1b}}
execute if score @s bs.item.id matches 801 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:polished_deepslate_wall","Count":1b}}
execute if score @s bs.item.id matches 802 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:polished_diorite","Count":1b}}
execute if score @s bs.item.id matches 803 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:polished_diorite_slab","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
