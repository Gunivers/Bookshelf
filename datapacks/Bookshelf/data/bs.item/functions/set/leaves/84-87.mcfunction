execute if score @s bs.item.id matches 84 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:blackstone_slab","Count":1b}}
execute if score @s bs.item.id matches 85 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:blackstone_stairs","Count":1b}}
execute if score @s bs.item.id matches 86 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:blackstone_wall","Count":1b}}
execute if score @s bs.item.id matches 87 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:blast_furnace","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
