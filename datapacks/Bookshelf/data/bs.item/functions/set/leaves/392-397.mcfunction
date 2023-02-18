execute if score @s bs.itemId matches 392 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:fletching_table","Count":1b}}
execute if score @s bs.itemId matches 393 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:flint","Count":1b}}
execute if score @s bs.itemId matches 394 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:flint_and_steel","Count":1b}}
execute if score @s bs.itemId matches 395 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:flower_banner_pattern","Count":1b}}
execute if score @s bs.itemId matches 396 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:flower_pot","Count":1b}}
execute if score @s bs.itemId matches 397 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:flowering_azalea","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
