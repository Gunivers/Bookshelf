execute if score @s bs.item.id matches 1102 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:weathered_cut_copper_stairs","Count":1b}}
execute if score @s bs.item.id matches 1103 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:weeping_vines","Count":1b}}
execute if score @s bs.item.id matches 1104 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:wet_sponge","Count":1b}}
execute if score @s bs.item.id matches 1105 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:wheat","Count":1b}}
execute if score @s bs.item.id matches 1106 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:wheat_seeds","Count":1b}}
execute if score @s bs.item.id matches 1107 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:white_banner","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
