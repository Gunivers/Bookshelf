execute if score @s bs.item.id matches 846 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:purpur_stairs","Count":1b}}
execute if score @s bs.item.id matches 847 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:quartz","Count":1b}}
execute if score @s bs.item.id matches 848 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:quartz_block","Count":1b}}
execute if score @s bs.item.id matches 849 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:quartz_bricks","Count":1b}}
execute if score @s bs.item.id matches 850 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:quartz_pillar","Count":1b}}
execute if score @s bs.item.id matches 851 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:quartz_slab","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
