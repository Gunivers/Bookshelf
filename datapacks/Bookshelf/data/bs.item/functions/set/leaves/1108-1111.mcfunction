execute if score @s bs.item.id matches 1108 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:white_bed","Count":1b}}
execute if score @s bs.item.id matches 1109 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:white_candle","Count":1b}}
execute if score @s bs.item.id matches 1110 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:white_carpet","Count":1b}}
execute if score @s bs.item.id matches 1111 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:white_concrete","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
