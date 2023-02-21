execute if score @s bs.item.id matches 1028 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:sugar_cane","Count":1b}}
execute if score @s bs.item.id matches 1029 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:sunflower","Count":1b}}
execute if score @s bs.item.id matches 1030 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:suspicious_stew","Count":1b}}
execute if score @s bs.item.id matches 1031 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:sweet_berries","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
