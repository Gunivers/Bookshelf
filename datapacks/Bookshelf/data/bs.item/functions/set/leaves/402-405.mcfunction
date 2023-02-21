execute if score @s bs.item.id matches 402 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:furnace","Count":1b}}
execute if score @s bs.item.id matches 403 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:furnace_minecart","Count":1b}}
execute if score @s bs.item.id matches 404 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:ghast_spawn_egg","Count":1b}}
execute if score @s bs.item.id matches 405 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:ghast_tear","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
