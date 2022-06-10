execute if score @s glib.itemId matches 640 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:melon_slice","Count":1b}}
execute if score @s glib.itemId matches 641 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:milk_bucket","Count":1b}}
execute if score @s glib.itemId matches 642 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:minecart","Count":1b}}
execute if score @s glib.itemId matches 643 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:mojang_banner_pattern","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
