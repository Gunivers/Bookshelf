execute if score @s bs.item.id matches 1032 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:tadpole_bucket","Count":1b}}
execute if score @s bs.item.id matches 1033 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:tadpole_spawn_egg","Count":1b}}
execute if score @s bs.item.id matches 1034 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:tall_grass","Count":1b}}
execute if score @s bs.item.id matches 1035 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:target","Count":1b}}
execute if score @s bs.item.id matches 1036 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:terracotta","Count":1b}}
execute if score @s bs.item.id matches 1037 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:tinted_glass","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
