execute if score @s bs.itemId matches 918 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:sculk_vein","Count":1b}}
execute if score @s bs.itemId matches 919 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:scute","Count":1b}}
execute if score @s bs.itemId matches 920 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:sea_lantern","Count":1b}}
execute if score @s bs.itemId matches 921 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:sea_pickle","Count":1b}}
execute if score @s bs.itemId matches 922 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:seagrass","Count":1b}}
execute if score @s bs.itemId matches 923 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:shears","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
