execute if score @s bs.item.id matches 810 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:porkchop","Count":1b}}
execute if score @s bs.item.id matches 811 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:potato","Count":1b}}
execute if score @s bs.item.id matches 812 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:potion","Count":1b}}
execute if score @s bs.item.id matches 813 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:powder_snow_bucket","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
