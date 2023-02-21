execute if score @s bs.item.id matches 490 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:infested_chiseled_stone_bricks","Count":1b}}
execute if score @s bs.item.id matches 491 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:infested_cobblestone","Count":1b}}
execute if score @s bs.item.id matches 492 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:infested_cracked_stone_bricks","Count":1b}}
execute if score @s bs.item.id matches 493 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:infested_deepslate","Count":1b}}
execute if score @s bs.item.id matches 494 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:infested_mossy_stone_bricks","Count":1b}}
execute if score @s bs.item.id matches 495 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:infested_stone","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
