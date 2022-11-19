execute if score @s bs.itemId matches 98 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:blue_glazed_terracotta","Count":1b}}
execute if score @s bs.itemId matches 99 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:blue_ice","Count":1b}}
execute if score @s bs.itemId matches 100 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:blue_orchid","Count":1b}}
execute if score @s bs.itemId matches 101 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:blue_shulker_box","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
