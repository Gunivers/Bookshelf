execute if score @s bs.item.id matches 426 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:golden_axe","Count":1b}}
execute if score @s bs.item.id matches 427 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:golden_boots","Count":1b}}
execute if score @s bs.item.id matches 428 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:golden_carrot","Count":1b}}
execute if score @s bs.item.id matches 429 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:golden_chestplate","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
