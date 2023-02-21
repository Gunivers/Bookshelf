execute if score @s bs.item.id matches 270 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:dark_oak_fence_gate","Count":1b}}
execute if score @s bs.item.id matches 271 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:dark_oak_leaves","Count":1b}}
execute if score @s bs.item.id matches 272 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:dark_oak_log","Count":1b}}
execute if score @s bs.item.id matches 273 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:dark_oak_planks","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
