execute if score @s bs.item.id matches 373 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:endermite_spawn_egg","Count":1b}}
execute if score @s bs.item.id matches 374 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:evoker_spawn_egg","Count":1b}}
execute if score @s bs.item.id matches 375 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:experience_bottle","Count":1b}}
execute if score @s bs.item.id matches 376 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:exposed_copper","Count":1b}}
execute if score @s bs.item.id matches 377 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:exposed_cut_copper","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
