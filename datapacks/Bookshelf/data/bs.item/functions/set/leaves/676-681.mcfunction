execute if score @s bs.item.id matches 676 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:music_disc_strad","Count":1b}}
execute if score @s bs.item.id matches 677 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:music_disc_wait","Count":1b}}
execute if score @s bs.item.id matches 678 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:music_disc_ward","Count":1b}}
execute if score @s bs.item.id matches 679 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:mutton","Count":1b}}
execute if score @s bs.item.id matches 680 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:mycelium","Count":1b}}
execute if score @s bs.item.id matches 681 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:name_tag","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
