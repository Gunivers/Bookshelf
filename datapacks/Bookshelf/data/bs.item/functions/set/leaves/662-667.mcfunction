execute if score @s bs.item.id matches 662 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:mushroom_stem","Count":1b}}
execute if score @s bs.item.id matches 663 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:mushroom_stew","Count":1b}}
execute if score @s bs.item.id matches 664 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:music_disc_11","Count":1b}}
execute if score @s bs.item.id matches 665 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:music_disc_13","Count":1b}}
execute if score @s bs.item.id matches 666 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:music_disc_5","Count":1b}}
execute if score @s bs.item.id matches 667 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:music_disc_blocks","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
