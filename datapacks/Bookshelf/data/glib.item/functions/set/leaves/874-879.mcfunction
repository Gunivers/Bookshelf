execute if score @s bs.itemId matches 874 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:red_glazed_terracotta","Count":1b}}
execute if score @s bs.itemId matches 875 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:red_mushroom","Count":1b}}
execute if score @s bs.itemId matches 876 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:red_mushroom_block","Count":1b}}
execute if score @s bs.itemId matches 877 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:red_nether_brick_slab","Count":1b}}
execute if score @s bs.itemId matches 878 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:red_nether_brick_stairs","Count":1b}}
execute if score @s bs.itemId matches 879 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:red_nether_brick_wall","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
