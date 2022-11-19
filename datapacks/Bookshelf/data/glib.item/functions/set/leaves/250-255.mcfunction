execute if score @s bs.itemId matches 250 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:cyan_banner","Count":1b}}
execute if score @s bs.itemId matches 251 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:cyan_bed","Count":1b}}
execute if score @s bs.itemId matches 252 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:cyan_candle","Count":1b}}
execute if score @s bs.itemId matches 253 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:cyan_carpet","Count":1b}}
execute if score @s bs.itemId matches 254 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:cyan_concrete","Count":1b}}
execute if score @s bs.itemId matches 255 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:cyan_concrete_powder","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
