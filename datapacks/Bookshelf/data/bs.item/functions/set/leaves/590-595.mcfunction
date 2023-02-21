execute if score @s bs.item.id matches 590 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:lime_concrete","Count":1b}}
execute if score @s bs.item.id matches 591 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:lime_concrete_powder","Count":1b}}
execute if score @s bs.item.id matches 592 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:lime_dye","Count":1b}}
execute if score @s bs.item.id matches 593 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:lime_glazed_terracotta","Count":1b}}
execute if score @s bs.item.id matches 594 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:lime_shulker_box","Count":1b}}
execute if score @s bs.item.id matches 595 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:lime_stained_glass","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
