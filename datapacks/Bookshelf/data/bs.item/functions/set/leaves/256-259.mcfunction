execute if score @s bs.item.id matches 256 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:cyan_dye","Count":1b}}
execute if score @s bs.item.id matches 257 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:cyan_glazed_terracotta","Count":1b}}
execute if score @s bs.item.id matches 258 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:cyan_shulker_box","Count":1b}}
execute if score @s bs.item.id matches 259 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:cyan_stained_glass","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
