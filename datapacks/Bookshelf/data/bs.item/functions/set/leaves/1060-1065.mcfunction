execute if score @s bs.item.id matches 1060 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:villager_spawn_egg","Count":1b}}
execute if score @s bs.item.id matches 1061 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:vindicator_spawn_egg","Count":1b}}
execute if score @s bs.item.id matches 1062 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:vine","Count":1b}}
execute if score @s bs.item.id matches 1063 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:wandering_trader_spawn_egg","Count":1b}}
execute if score @s bs.item.id matches 1064 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:warden_spawn_egg","Count":1b}}
execute if score @s bs.item.id matches 1065 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:warped_button","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
