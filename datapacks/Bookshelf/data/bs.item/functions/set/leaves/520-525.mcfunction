execute if score @s bs.itemId matches 520 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:jungle_button","Count":1b}}
execute if score @s bs.itemId matches 521 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:jungle_chest_boat","Count":1b}}
execute if score @s bs.itemId matches 522 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:jungle_door","Count":1b}}
execute if score @s bs.itemId matches 523 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:jungle_fence","Count":1b}}
execute if score @s bs.itemId matches 524 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:jungle_fence_gate","Count":1b}}
execute if score @s bs.itemId matches 525 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:jungle_leaves","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
