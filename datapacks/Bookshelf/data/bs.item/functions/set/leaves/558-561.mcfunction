execute if score @s bs.item.id matches 558 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:light_blue_carpet","Count":1b}}
execute if score @s bs.item.id matches 559 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:light_blue_concrete","Count":1b}}
execute if score @s bs.item.id matches 560 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:light_blue_concrete_powder","Count":1b}}
execute if score @s bs.item.id matches 561 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:light_blue_dye","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
