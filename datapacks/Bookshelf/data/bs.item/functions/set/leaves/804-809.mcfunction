execute if score @s bs.item.id matches 804 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:polished_diorite_stairs","Count":1b}}
execute if score @s bs.item.id matches 805 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:polished_granite","Count":1b}}
execute if score @s bs.item.id matches 806 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:polished_granite_slab","Count":1b}}
execute if score @s bs.item.id matches 807 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:polished_granite_stairs","Count":1b}}
execute if score @s bs.item.id matches 808 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:popped_chorus_fruit","Count":1b}}
execute if score @s bs.item.id matches 809 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:poppy","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
