execute if score @s bs.itemId matches 1141 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:yellow_shulker_box","Count":1b}}
execute if score @s bs.itemId matches 1142 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:yellow_stained_glass","Count":1b}}
execute if score @s bs.itemId matches 1143 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:yellow_stained_glass_pane","Count":1b}}
execute if score @s bs.itemId matches 1144 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:yellow_terracotta","Count":1b}}
execute if score @s bs.itemId matches 1145 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:yellow_wool","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
