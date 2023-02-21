execute if score @s bs.item.id matches 757 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:phantom_membrane","Count":1b}}
execute if score @s bs.item.id matches 758 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:phantom_spawn_egg","Count":1b}}
execute if score @s bs.item.id matches 759 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:pig_spawn_egg","Count":1b}}
execute if score @s bs.item.id matches 760 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:piglin_banner_pattern","Count":1b}}
execute if score @s bs.item.id matches 761 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:piglin_brute_spawn_egg","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
