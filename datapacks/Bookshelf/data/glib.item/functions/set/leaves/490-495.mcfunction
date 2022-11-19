execute if score @s bs.itemId matches 490 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:infested_chiseled_stone_bricks","Count":1b}}
execute if score @s bs.itemId matches 491 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:infested_cobblestone","Count":1b}}
execute if score @s bs.itemId matches 492 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:infested_cracked_stone_bricks","Count":1b}}
execute if score @s bs.itemId matches 493 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:infested_deepslate","Count":1b}}
execute if score @s bs.itemId matches 494 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:infested_mossy_stone_bricks","Count":1b}}
execute if score @s bs.itemId matches 495 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:infested_stone","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
