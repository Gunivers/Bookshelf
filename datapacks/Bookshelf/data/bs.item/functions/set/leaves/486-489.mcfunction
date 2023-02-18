execute if score @s bs.itemId matches 486 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:horn_coral_fan","Count":1b}}
execute if score @s bs.itemId matches 487 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:horse_spawn_egg","Count":1b}}
execute if score @s bs.itemId matches 488 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:husk_spawn_egg","Count":1b}}
execute if score @s bs.itemId matches 489 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:ice","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
