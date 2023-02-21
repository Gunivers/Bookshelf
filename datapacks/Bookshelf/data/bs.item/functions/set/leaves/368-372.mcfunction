execute if score @s bs.item.id matches 368 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:end_stone_bricks","Count":1b}}
execute if score @s bs.item.id matches 369 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:ender_chest","Count":1b}}
execute if score @s bs.item.id matches 370 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:ender_eye","Count":1b}}
execute if score @s bs.item.id matches 371 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:ender_pearl","Count":1b}}
execute if score @s bs.item.id matches 372 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:enderman_spawn_egg","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
