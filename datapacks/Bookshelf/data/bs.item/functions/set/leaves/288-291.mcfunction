execute if score @s bs.item.id matches 288 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:dead_bubble_coral","Count":1b}}
execute if score @s bs.item.id matches 289 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:dead_bubble_coral_block","Count":1b}}
execute if score @s bs.item.id matches 290 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:dead_bubble_coral_fan","Count":1b}}
execute if score @s bs.item.id matches 291 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:dead_bush","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
