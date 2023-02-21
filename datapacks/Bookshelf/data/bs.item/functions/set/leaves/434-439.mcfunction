execute if score @s bs.item.id matches 434 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:golden_pickaxe","Count":1b}}
execute if score @s bs.item.id matches 435 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:golden_shovel","Count":1b}}
execute if score @s bs.item.id matches 436 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:golden_sword","Count":1b}}
execute if score @s bs.item.id matches 437 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:granite","Count":1b}}
execute if score @s bs.item.id matches 438 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:granite_slab","Count":1b}}
execute if score @s bs.item.id matches 439 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:granite_stairs","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
