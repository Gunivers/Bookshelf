execute if score @s bs.item.id matches 412 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:glow_berries","Count":1b}}
execute if score @s bs.item.id matches 413 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:glow_ink_sac","Count":1b}}
execute if score @s bs.item.id matches 414 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:glow_item_frame","Count":1b}}
execute if score @s bs.item.id matches 415 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:glow_lichen","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
