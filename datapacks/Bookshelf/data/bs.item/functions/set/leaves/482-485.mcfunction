execute if score @s bs.item.id matches 482 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:hopper","Count":1b}}
execute if score @s bs.item.id matches 483 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:hopper_minecart","Count":1b}}
execute if score @s bs.item.id matches 484 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:horn_coral","Count":1b}}
execute if score @s bs.item.id matches 485 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:horn_coral_block","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
