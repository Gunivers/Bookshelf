execute if score @s bs.itemId matches 714 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:oak_fence_gate","Count":1b}}
execute if score @s bs.itemId matches 715 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:oak_leaves","Count":1b}}
execute if score @s bs.itemId matches 716 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:oak_log","Count":1b}}
execute if score @s bs.itemId matches 717 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:oak_planks","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
