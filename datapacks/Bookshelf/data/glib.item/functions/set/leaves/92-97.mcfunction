execute if score @s bs.itemId matches 92 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:blue_bed","Count":1b}}
execute if score @s bs.itemId matches 93 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:blue_candle","Count":1b}}
execute if score @s bs.itemId matches 94 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:blue_carpet","Count":1b}}
execute if score @s bs.itemId matches 95 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:blue_concrete","Count":1b}}
execute if score @s bs.itemId matches 96 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:blue_concrete_powder","Count":1b}}
execute if score @s bs.itemId matches 97 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:blue_dye","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
