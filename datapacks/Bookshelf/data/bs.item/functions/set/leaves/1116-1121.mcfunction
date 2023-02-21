execute if score @s bs.item.id matches 1116 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:white_stained_glass","Count":1b}}
execute if score @s bs.item.id matches 1117 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:white_stained_glass_pane","Count":1b}}
execute if score @s bs.item.id matches 1118 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:white_terracotta","Count":1b}}
execute if score @s bs.item.id matches 1119 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:white_tulip","Count":1b}}
execute if score @s bs.item.id matches 1120 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:white_wool","Count":1b}}
execute if score @s bs.item.id matches 1121 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:witch_spawn_egg","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
