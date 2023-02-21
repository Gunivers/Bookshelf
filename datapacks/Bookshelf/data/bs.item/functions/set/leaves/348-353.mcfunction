execute if score @s bs.item.id matches 348 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:dripstone_block","Count":1b}}
execute if score @s bs.item.id matches 349 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:dropper","Count":1b}}
execute if score @s bs.item.id matches 350 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:drowned_spawn_egg","Count":1b}}
execute if score @s bs.item.id matches 351 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:echo_shard","Count":1b}}
execute if score @s bs.item.id matches 352 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:egg","Count":1b}}
execute if score @s bs.item.id matches 353 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:elder_guardian_spawn_egg","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
