execute if score @s bs.itemId matches 402 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:furnace","Count":1b}}
execute if score @s bs.itemId matches 403 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:furnace_minecart","Count":1b}}
execute if score @s bs.itemId matches 404 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:ghast_spawn_egg","Count":1b}}
execute if score @s bs.itemId matches 405 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:ghast_tear","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
