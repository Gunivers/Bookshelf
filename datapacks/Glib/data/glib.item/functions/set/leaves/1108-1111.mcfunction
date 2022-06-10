execute if score @s glib.itemId matches 1108 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:white_bed","Count":1b}}
execute if score @s glib.itemId matches 1109 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:white_candle","Count":1b}}
execute if score @s glib.itemId matches 1110 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:white_carpet","Count":1b}}
execute if score @s glib.itemId matches 1111 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:white_concrete","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
