execute if score @s bs.item.id matches 604 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:magenta_bed","Count":1b}}
execute if score @s bs.item.id matches 605 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:magenta_candle","Count":1b}}
execute if score @s bs.item.id matches 606 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:magenta_carpet","Count":1b}}
execute if score @s bs.item.id matches 607 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:magenta_concrete","Count":1b}}
execute if score @s bs.item.id matches 608 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:magenta_concrete_powder","Count":1b}}
execute if score @s bs.item.id matches 609 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:magenta_dye","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
