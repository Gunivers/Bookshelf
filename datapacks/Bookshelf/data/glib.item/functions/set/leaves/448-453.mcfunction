execute if score @s bs.itemId matches 448 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:gray_concrete","Count":1b}}
execute if score @s bs.itemId matches 449 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:gray_concrete_powder","Count":1b}}
execute if score @s bs.itemId matches 450 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:gray_dye","Count":1b}}
execute if score @s bs.itemId matches 451 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:gray_glazed_terracotta","Count":1b}}
execute if score @s bs.itemId matches 452 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:gray_shulker_box","Count":1b}}
execute if score @s bs.itemId matches 453 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:gray_stained_glass","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
