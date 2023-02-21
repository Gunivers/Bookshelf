execute if score @s bs.item.id matches 824 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:pufferfish","Count":1b}}
execute if score @s bs.item.id matches 825 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:pufferfish_bucket","Count":1b}}
execute if score @s bs.item.id matches 826 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:pufferfish_spawn_egg","Count":1b}}
execute if score @s bs.item.id matches 827 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:pumpkin","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
