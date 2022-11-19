execute if score @s bs.itemId matches 554 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:light","Count":1b}}
execute if score @s bs.itemId matches 555 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:light_blue_banner","Count":1b}}
execute if score @s bs.itemId matches 556 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:light_blue_bed","Count":1b}}
execute if score @s bs.itemId matches 557 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:light_blue_candle","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
