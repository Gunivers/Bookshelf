execute if score @s bs.itemId matches 84 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:blackstone_slab","Count":1b}}
execute if score @s bs.itemId matches 85 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:blackstone_stairs","Count":1b}}
execute if score @s bs.itemId matches 86 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:blackstone_wall","Count":1b}}
execute if score @s bs.itemId matches 87 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:blast_furnace","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
