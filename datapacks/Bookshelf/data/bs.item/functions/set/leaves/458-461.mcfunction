execute if score @s bs.itemId matches 458 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:green_bed","Count":1b}}
execute if score @s bs.itemId matches 459 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:green_candle","Count":1b}}
execute if score @s bs.itemId matches 460 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:green_carpet","Count":1b}}
execute if score @s bs.itemId matches 461 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:green_concrete","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
