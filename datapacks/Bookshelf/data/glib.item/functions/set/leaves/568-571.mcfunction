execute if score @s bs.itemId matches 568 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:light_gray_banner","Count":1b}}
execute if score @s bs.itemId matches 569 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:light_gray_bed","Count":1b}}
execute if score @s bs.itemId matches 570 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:light_gray_candle","Count":1b}}
execute if score @s bs.itemId matches 571 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:light_gray_carpet","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
