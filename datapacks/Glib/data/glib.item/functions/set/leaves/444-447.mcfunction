execute if score @s glib.itemId matches 444 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:gray_banner","Count":1b}}
execute if score @s glib.itemId matches 445 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:gray_bed","Count":1b}}
execute if score @s glib.itemId matches 446 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:gray_candle","Count":1b}}
execute if score @s glib.itemId matches 447 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:gray_carpet","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
