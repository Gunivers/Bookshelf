execute if score @s bs.item.id matches 718 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:oak_pressure_plate","Count":1b}}
execute if score @s bs.item.id matches 719 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:oak_sapling","Count":1b}}
execute if score @s bs.item.id matches 720 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:oak_sign","Count":1b}}
execute if score @s bs.item.id matches 721 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:oak_slab","Count":1b}}
execute if score @s bs.item.id matches 722 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:oak_stairs","Count":1b}}
execute if score @s bs.item.id matches 723 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:oak_trapdoor","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
