execute if score @s bs.item.id matches 416 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:glow_squid_spawn_egg","Count":1b}}
execute if score @s bs.item.id matches 417 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:glowstone","Count":1b}}
execute if score @s bs.item.id matches 418 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:glowstone_dust","Count":1b}}
execute if score @s bs.item.id matches 419 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:goat_horn","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
