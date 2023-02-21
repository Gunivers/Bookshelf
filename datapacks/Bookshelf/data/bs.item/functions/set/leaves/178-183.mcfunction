execute if score @s bs.item.id matches 178 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:clay","Count":1b}}
execute if score @s bs.item.id matches 179 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:clay_ball","Count":1b}}
execute if score @s bs.item.id matches 180 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:clock","Count":1b}}
execute if score @s bs.item.id matches 181 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:coal","Count":1b}}
execute if score @s bs.item.id matches 182 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:coal_block","Count":1b}}
execute if score @s bs.item.id matches 183 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:coal_ore","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
