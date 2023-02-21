execute if score @s bs.item.id matches 292 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:dead_fire_coral","Count":1b}}
execute if score @s bs.item.id matches 293 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:dead_fire_coral_block","Count":1b}}
execute if score @s bs.item.id matches 294 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:dead_fire_coral_fan","Count":1b}}
execute if score @s bs.item.id matches 295 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:dead_horn_coral","Count":1b}}
execute if score @s bs.item.id matches 296 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:dead_horn_coral_block","Count":1b}}
execute if score @s bs.item.id matches 297 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:dead_horn_coral_fan","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
