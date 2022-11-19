execute if score @s bs.itemId matches 562 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:light_blue_glazed_terracotta","Count":1b}}
execute if score @s bs.itemId matches 563 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:light_blue_shulker_box","Count":1b}}
execute if score @s bs.itemId matches 564 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:light_blue_stained_glass","Count":1b}}
execute if score @s bs.itemId matches 565 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:light_blue_stained_glass_pane","Count":1b}}
execute if score @s bs.itemId matches 566 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:light_blue_terracotta","Count":1b}}
execute if score @s bs.itemId matches 567 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:light_blue_wool","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
