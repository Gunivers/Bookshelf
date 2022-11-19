execute if score @s bs.itemId matches 658 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:mud_brick_wall","Count":1b}}
execute if score @s bs.itemId matches 659 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:mud_bricks","Count":1b}}
execute if score @s bs.itemId matches 660 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:muddy_mangrove_roots","Count":1b}}
execute if score @s bs.itemId matches 661 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:mule_spawn_egg","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
