execute if score @s bs.item.id matches 668 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:music_disc_cat","Count":1b}}
execute if score @s bs.item.id matches 669 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:music_disc_chirp","Count":1b}}
execute if score @s bs.item.id matches 670 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:music_disc_far","Count":1b}}
execute if score @s bs.item.id matches 671 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:music_disc_mall","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
