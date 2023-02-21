execute if score @s bs.item.id matches 832 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:purple_candle","Count":1b}}
execute if score @s bs.item.id matches 833 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:purple_carpet","Count":1b}}
execute if score @s bs.item.id matches 834 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:purple_concrete","Count":1b}}
execute if score @s bs.item.id matches 835 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:purple_concrete_powder","Count":1b}}
execute if score @s bs.item.id matches 836 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:purple_dye","Count":1b}}
execute if score @s bs.item.id matches 837 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:purple_glazed_terracotta","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
