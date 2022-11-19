execute if score @s bs.itemId matches 846 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:purpur_stairs","Count":1b}}
execute if score @s bs.itemId matches 847 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:quartz","Count":1b}}
execute if score @s bs.itemId matches 848 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:quartz_block","Count":1b}}
execute if score @s bs.itemId matches 849 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:quartz_bricks","Count":1b}}
execute if score @s bs.itemId matches 850 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:quartz_pillar","Count":1b}}
execute if score @s bs.itemId matches 851 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:quartz_slab","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
