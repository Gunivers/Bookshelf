execute if score @s bs.itemId matches 640 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:melon_slice","Count":1b}}
execute if score @s bs.itemId matches 641 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:milk_bucket","Count":1b}}
execute if score @s bs.itemId matches 642 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:minecart","Count":1b}}
execute if score @s bs.itemId matches 643 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:mojang_banner_pattern","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
