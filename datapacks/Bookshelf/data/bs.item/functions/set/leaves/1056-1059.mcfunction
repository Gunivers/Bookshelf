execute if score @s bs.item.id matches 1056 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:turtle_spawn_egg","Count":1b}}
execute if score @s bs.item.id matches 1057 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:twisting_vines","Count":1b}}
execute if score @s bs.item.id matches 1058 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:verdant_froglight","Count":1b}}
execute if score @s bs.item.id matches 1059 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:vex_spawn_egg","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
