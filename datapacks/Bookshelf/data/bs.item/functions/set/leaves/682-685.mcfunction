execute if score @s bs.item.id matches 682 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:nautilus_shell","Count":1b}}
execute if score @s bs.item.id matches 683 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:nether_brick","Count":1b}}
execute if score @s bs.item.id matches 684 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:nether_brick_fence","Count":1b}}
execute if score @s bs.item.id matches 685 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:nether_brick_slab","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
