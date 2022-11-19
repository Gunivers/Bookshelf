execute if score @s bs.itemId matches 270 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:dark_oak_fence_gate","Count":1b}}
execute if score @s bs.itemId matches 271 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:dark_oak_leaves","Count":1b}}
execute if score @s bs.itemId matches 272 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:dark_oak_log","Count":1b}}
execute if score @s bs.itemId matches 273 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:dark_oak_planks","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
