execute if score @s bs.item.id matches 818 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:prismarine_bricks","Count":1b}}
execute if score @s bs.item.id matches 819 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:prismarine_crystals","Count":1b}}
execute if score @s bs.item.id matches 820 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:prismarine_shard","Count":1b}}
execute if score @s bs.item.id matches 821 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:prismarine_slab","Count":1b}}
execute if score @s bs.item.id matches 822 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:prismarine_stairs","Count":1b}}
execute if score @s bs.item.id matches 823 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:prismarine_wall","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
