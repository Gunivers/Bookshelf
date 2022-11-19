execute if score @s bs.itemId matches 852 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:quartz_stairs","Count":1b}}
execute if score @s bs.itemId matches 853 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:rabbit","Count":1b}}
execute if score @s bs.itemId matches 854 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:rabbit_foot","Count":1b}}
execute if score @s bs.itemId matches 855 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:rabbit_hide","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
