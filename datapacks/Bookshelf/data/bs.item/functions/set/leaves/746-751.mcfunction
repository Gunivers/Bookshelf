execute if score @s bs.item.id matches 746 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:oxidized_cut_copper_slab","Count":1b}}
execute if score @s bs.item.id matches 747 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:oxidized_cut_copper_stairs","Count":1b}}
execute if score @s bs.item.id matches 748 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:packed_ice","Count":1b}}
execute if score @s bs.item.id matches 749 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:packed_mud","Count":1b}}
execute if score @s bs.item.id matches 750 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:painting","Count":1b}}
execute if score @s bs.item.id matches 751 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:panda_spawn_egg","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
