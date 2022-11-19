execute if score @s bs.itemId matches 885 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:red_sandstone_wall","Count":1b}}
execute if score @s bs.itemId matches 886 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:red_shulker_box","Count":1b}}
execute if score @s bs.itemId matches 887 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:red_stained_glass","Count":1b}}
execute if score @s bs.itemId matches 888 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:red_stained_glass_pane","Count":1b}}
execute if score @s bs.itemId matches 889 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:red_terracotta","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
