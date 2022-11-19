execute if score @s bs.itemId matches 292 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:dead_fire_coral","Count":1b}}
execute if score @s bs.itemId matches 293 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:dead_fire_coral_block","Count":1b}}
execute if score @s bs.itemId matches 294 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:dead_fire_coral_fan","Count":1b}}
execute if score @s bs.itemId matches 295 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:dead_horn_coral","Count":1b}}
execute if score @s bs.itemId matches 296 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:dead_horn_coral_block","Count":1b}}
execute if score @s bs.itemId matches 297 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:dead_horn_coral_fan","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
