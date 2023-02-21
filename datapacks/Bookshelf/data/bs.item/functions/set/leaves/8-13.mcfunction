execute if score @s bs.item.id matches 8 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:acacia_planks","Count":1b}}
execute if score @s bs.item.id matches 9 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:acacia_pressure_plate","Count":1b}}
execute if score @s bs.item.id matches 10 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:acacia_sapling","Count":1b}}
execute if score @s bs.item.id matches 11 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:acacia_sign","Count":1b}}
execute if score @s bs.item.id matches 12 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:acacia_slab","Count":1b}}
execute if score @s bs.item.id matches 13 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:acacia_stairs","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
