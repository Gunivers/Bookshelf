execute if score @s bs.itemId matches 904 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:saddle","Count":1b}}
execute if score @s bs.itemId matches 905 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:salmon","Count":1b}}
execute if score @s bs.itemId matches 906 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:salmon_bucket","Count":1b}}
execute if score @s bs.itemId matches 907 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:salmon_spawn_egg","Count":1b}}
execute if score @s bs.itemId matches 908 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:sand","Count":1b}}
execute if score @s bs.itemId matches 909 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:sandstone","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
