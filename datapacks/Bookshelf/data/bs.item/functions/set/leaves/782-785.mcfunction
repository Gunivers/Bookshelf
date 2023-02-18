execute if score @s bs.itemId matches 782 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:poisonous_potato","Count":1b}}
execute if score @s bs.itemId matches 783 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:polar_bear_spawn_egg","Count":1b}}
execute if score @s bs.itemId matches 784 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:polished_andesite","Count":1b}}
execute if score @s bs.itemId matches 785 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:polished_andesite_slab","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
