execute if score @s bs.item.id matches 629 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:mangrove_propagule","Count":1b}}
execute if score @s bs.item.id matches 630 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:mangrove_roots","Count":1b}}
execute if score @s bs.item.id matches 631 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:mangrove_sign","Count":1b}}
execute if score @s bs.item.id matches 632 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:mangrove_slab","Count":1b}}
execute if score @s bs.item.id matches 633 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:mangrove_stairs","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
