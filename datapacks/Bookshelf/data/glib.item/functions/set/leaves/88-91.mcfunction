execute if score @s bs.itemId matches 88 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:blaze_powder","Count":1b}}
execute if score @s bs.itemId matches 89 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:blaze_rod","Count":1b}}
execute if score @s bs.itemId matches 90 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:blaze_spawn_egg","Count":1b}}
execute if score @s bs.itemId matches 91 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:blue_banner","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
