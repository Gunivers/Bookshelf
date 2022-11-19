execute if score @s bs.itemId matches 1112 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:white_concrete_powder","Count":1b}}
execute if score @s bs.itemId matches 1113 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:white_dye","Count":1b}}
execute if score @s bs.itemId matches 1114 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:white_glazed_terracotta","Count":1b}}
execute if score @s bs.itemId matches 1115 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:white_shulker_box","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
