execute if score @s bs.itemId matches 956 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:snowball","Count":1b}}
execute if score @s bs.itemId matches 957 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:soul_campfire","Count":1b}}
execute if score @s bs.itemId matches 958 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:soul_lantern","Count":1b}}
execute if score @s bs.itemId matches 959 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:soul_sand","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id