execute if score @s bs.item.id matches 1042 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:totem_of_undying","Count":1b}}
execute if score @s bs.item.id matches 1043 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:trader_llama_spawn_egg","Count":1b}}
execute if score @s bs.item.id matches 1044 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:trapped_chest","Count":1b}}
execute if score @s bs.item.id matches 1045 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:trident","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
