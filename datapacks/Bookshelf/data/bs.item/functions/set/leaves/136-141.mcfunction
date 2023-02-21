execute if score @s bs.item.id matches 136 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:brown_terracotta","Count":1b}}
execute if score @s bs.item.id matches 137 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:brown_wool","Count":1b}}
execute if score @s bs.item.id matches 138 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:bubble_coral","Count":1b}}
execute if score @s bs.item.id matches 139 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:bubble_coral_block","Count":1b}}
execute if score @s bs.item.id matches 140 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:bubble_coral_fan","Count":1b}}
execute if score @s bs.item.id matches 141 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:bucket","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
