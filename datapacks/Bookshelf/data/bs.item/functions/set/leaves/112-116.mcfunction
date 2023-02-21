execute if score @s bs.item.id matches 112 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:bowl","Count":1b}}
execute if score @s bs.item.id matches 113 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:brain_coral","Count":1b}}
execute if score @s bs.item.id matches 114 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:brain_coral_block","Count":1b}}
execute if score @s bs.item.id matches 115 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:brain_coral_fan","Count":1b}}
execute if score @s bs.item.id matches 116 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:bread","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
