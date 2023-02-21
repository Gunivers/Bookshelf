execute if score @s bs.item.id matches 92 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:blue_bed","Count":1b}}
execute if score @s bs.item.id matches 93 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:blue_candle","Count":1b}}
execute if score @s bs.item.id matches 94 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:blue_carpet","Count":1b}}
execute if score @s bs.item.id matches 95 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:blue_concrete","Count":1b}}
execute if score @s bs.item.id matches 96 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:blue_concrete_powder","Count":1b}}
execute if score @s bs.item.id matches 97 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:blue_dye","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
