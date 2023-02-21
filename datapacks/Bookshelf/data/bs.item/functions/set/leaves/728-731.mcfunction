execute if score @s bs.item.id matches 728 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:ochre_froglight","Count":1b}}
execute if score @s bs.item.id matches 729 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:orange_banner","Count":1b}}
execute if score @s bs.item.id matches 730 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:orange_bed","Count":1b}}
execute if score @s bs.item.id matches 731 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:orange_candle","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
