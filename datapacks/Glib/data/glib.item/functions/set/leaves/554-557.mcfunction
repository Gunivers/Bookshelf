execute if score @s glib.itemId matches 554 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:light","Count":1b}}
execute if score @s glib.itemId matches 555 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:light_blue_banner","Count":1b}}
execute if score @s glib.itemId matches 556 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:light_blue_bed","Count":1b}}
execute if score @s glib.itemId matches 557 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:light_blue_candle","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
