execute if score @s bs.item.id matches 998 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:stone_pressure_plate","Count":1b}}
execute if score @s bs.item.id matches 999 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:stone_shovel","Count":1b}}
execute if score @s bs.item.id matches 1000 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:stone_slab","Count":1b}}
execute if score @s bs.item.id matches 1001 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:stone_stairs","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
