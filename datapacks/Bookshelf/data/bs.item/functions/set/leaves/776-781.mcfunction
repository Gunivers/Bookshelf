execute if score @s bs.itemId matches 776 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:pink_tulip","Count":1b}}
execute if score @s bs.itemId matches 777 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:pink_wool","Count":1b}}
execute if score @s bs.itemId matches 778 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:piston","Count":1b}}
execute if score @s bs.itemId matches 779 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:player_head","Count":1b}}
execute if score @s bs.itemId matches 780 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:podzol","Count":1b}}
execute if score @s bs.itemId matches 781 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:pointed_dripstone","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
