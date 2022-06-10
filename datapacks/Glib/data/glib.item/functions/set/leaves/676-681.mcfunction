execute if score @s glib.itemId matches 676 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:music_disc_strad","Count":1b}}
execute if score @s glib.itemId matches 677 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:music_disc_wait","Count":1b}}
execute if score @s glib.itemId matches 678 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:music_disc_ward","Count":1b}}
execute if score @s glib.itemId matches 679 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:mutton","Count":1b}}
execute if score @s glib.itemId matches 680 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:mycelium","Count":1b}}
execute if score @s glib.itemId matches 681 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:name_tag","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
