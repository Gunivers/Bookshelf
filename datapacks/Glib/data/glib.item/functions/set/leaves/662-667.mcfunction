execute if score @s glib.itemId matches 662 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:mushroom_stem","Count":1b}}
execute if score @s glib.itemId matches 663 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:mushroom_stew","Count":1b}}
execute if score @s glib.itemId matches 664 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:music_disc_11","Count":1b}}
execute if score @s glib.itemId matches 665 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:music_disc_13","Count":1b}}
execute if score @s glib.itemId matches 666 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:music_disc_5","Count":1b}}
execute if score @s glib.itemId matches 667 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:music_disc_blocks","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
