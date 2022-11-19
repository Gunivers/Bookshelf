execute if score @s bs.itemId matches 434 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:golden_pickaxe","Count":1b}}
execute if score @s bs.itemId matches 435 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:golden_shovel","Count":1b}}
execute if score @s bs.itemId matches 436 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:golden_sword","Count":1b}}
execute if score @s bs.itemId matches 437 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:granite","Count":1b}}
execute if score @s bs.itemId matches 438 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:granite_slab","Count":1b}}
execute if score @s bs.itemId matches 439 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:granite_stairs","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
