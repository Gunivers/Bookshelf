execute if score @s bs.item.id matches 42 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:bat_spawn_egg","Count":1b}}
execute if score @s bs.item.id matches 43 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:beacon","Count":1b}}
execute if score @s bs.item.id matches 44 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:bedrock","Count":1b}}
execute if score @s bs.item.id matches 45 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:bee_nest","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
