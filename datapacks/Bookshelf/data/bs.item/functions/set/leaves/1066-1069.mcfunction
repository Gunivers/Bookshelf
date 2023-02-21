execute if score @s bs.item.id matches 1066 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:warped_door","Count":1b}}
execute if score @s bs.item.id matches 1067 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:warped_fence","Count":1b}}
execute if score @s bs.item.id matches 1068 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:warped_fence_gate","Count":1b}}
execute if score @s bs.item.id matches 1069 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:warped_fungus","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
