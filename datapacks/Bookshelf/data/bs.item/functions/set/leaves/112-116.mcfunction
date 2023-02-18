execute if score @s bs.itemId matches 112 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:bowl","Count":1b}}
execute if score @s bs.itemId matches 113 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:brain_coral","Count":1b}}
execute if score @s bs.itemId matches 114 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:brain_coral_block","Count":1b}}
execute if score @s bs.itemId matches 115 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:brain_coral_fan","Count":1b}}
execute if score @s bs.itemId matches 116 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:bread","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
