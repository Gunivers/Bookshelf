execute if score @s bs.item.id matches 98 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:blue_glazed_terracotta","Count":1b}}
execute if score @s bs.item.id matches 99 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:blue_ice","Count":1b}}
execute if score @s bs.item.id matches 100 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:blue_orchid","Count":1b}}
execute if score @s bs.item.id matches 101 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:blue_shulker_box","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
