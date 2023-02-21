execute if score @s bs.item.id matches 870 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:red_carpet","Count":1b}}
execute if score @s bs.item.id matches 871 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:red_concrete","Count":1b}}
execute if score @s bs.item.id matches 872 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:red_concrete_powder","Count":1b}}
execute if score @s bs.item.id matches 873 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:red_dye","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
