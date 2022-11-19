execute if score @s bs.itemId matches 668 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:music_disc_cat","Count":1b}}
execute if score @s bs.itemId matches 669 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:music_disc_chirp","Count":1b}}
execute if score @s bs.itemId matches 670 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:music_disc_far","Count":1b}}
execute if score @s bs.itemId matches 671 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:music_disc_mall","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
