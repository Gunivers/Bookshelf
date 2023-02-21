execute if score @s bs.item.id matches 284 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:daylight_detector","Count":1b}}
execute if score @s bs.item.id matches 285 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:dead_brain_coral","Count":1b}}
execute if score @s bs.item.id matches 286 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:dead_brain_coral_block","Count":1b}}
execute if score @s bs.item.id matches 287 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:dead_brain_coral_fan","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
