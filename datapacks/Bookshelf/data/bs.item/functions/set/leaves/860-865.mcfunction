execute if score @s bs.item.id matches 860 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:raw_copper","Count":1b}}
execute if score @s bs.item.id matches 861 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:raw_copper_block","Count":1b}}
execute if score @s bs.item.id matches 862 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:raw_gold","Count":1b}}
execute if score @s bs.item.id matches 863 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:raw_gold_block","Count":1b}}
execute if score @s bs.item.id matches 864 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:raw_iron","Count":1b}}
execute if score @s bs.item.id matches 865 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:raw_iron_block","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
