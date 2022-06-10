execute if score @s glib.itemId matches 668 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:music_disc_cat","Count":1b}}
execute if score @s glib.itemId matches 669 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:music_disc_chirp","Count":1b}}
execute if score @s glib.itemId matches 670 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:music_disc_far","Count":1b}}
execute if score @s glib.itemId matches 671 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:music_disc_mall","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
