execute if score @s bs.item.id matches 928 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:shulker_shell","Count":1b}}
execute if score @s bs.item.id matches 929 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:shulker_spawn_egg","Count":1b}}
execute if score @s bs.item.id matches 930 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:silverfish_spawn_egg","Count":1b}}
execute if score @s bs.item.id matches 931 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:skeleton_horse_spawn_egg","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
