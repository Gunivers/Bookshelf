execute if score @s bs.itemId matches 36 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:azure_bluet","Count":1b}}
execute if score @s bs.itemId matches 37 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:baked_potato","Count":1b}}
execute if score @s bs.itemId matches 38 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:bamboo","Count":1b}}
execute if score @s bs.itemId matches 39 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:barrel","Count":1b}}
execute if score @s bs.itemId matches 40 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:barrier","Count":1b}}
execute if score @s bs.itemId matches 41 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:basalt","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
