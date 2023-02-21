execute if score @s bs.item.id matches 78 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:black_shulker_box","Count":1b}}
execute if score @s bs.item.id matches 79 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:black_stained_glass","Count":1b}}
execute if score @s bs.item.id matches 80 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:black_stained_glass_pane","Count":1b}}
execute if score @s bs.item.id matches 81 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:black_terracotta","Count":1b}}
execute if score @s bs.item.id matches 82 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:black_wool","Count":1b}}
execute if score @s bs.item.id matches 83 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:blackstone","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
