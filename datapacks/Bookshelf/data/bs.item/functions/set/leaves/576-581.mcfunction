execute if score @s bs.itemId matches 576 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:light_gray_shulker_box","Count":1b}}
execute if score @s bs.itemId matches 577 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:light_gray_stained_glass","Count":1b}}
execute if score @s bs.itemId matches 578 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:light_gray_stained_glass_pane","Count":1b}}
execute if score @s bs.itemId matches 579 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:light_gray_terracotta","Count":1b}}
execute if score @s bs.itemId matches 580 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:light_gray_wool","Count":1b}}
execute if score @s bs.itemId matches 581 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:light_weighted_pressure_plate","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
