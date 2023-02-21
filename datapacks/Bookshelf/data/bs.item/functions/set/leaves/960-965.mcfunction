execute if score @s bs.item.id matches 960 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:soul_soil","Count":1b}}
execute if score @s bs.item.id matches 961 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:soul_torch","Count":1b}}
execute if score @s bs.item.id matches 962 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:spawner","Count":1b}}
execute if score @s bs.item.id matches 963 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:spectral_arrow","Count":1b}}
execute if score @s bs.item.id matches 964 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:spider_eye","Count":1b}}
execute if score @s bs.item.id matches 965 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:spider_spawn_egg","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
