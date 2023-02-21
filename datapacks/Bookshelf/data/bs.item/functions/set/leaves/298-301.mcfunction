execute if score @s bs.item.id matches 298 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:dead_tube_coral","Count":1b}}
execute if score @s bs.item.id matches 299 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:dead_tube_coral_block","Count":1b}}
execute if score @s bs.item.id matches 300 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:dead_tube_coral_fan","Count":1b}}
execute if score @s bs.item.id matches 301 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:debug_stick","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
