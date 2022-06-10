execute if score @s glib.itemId matches 122 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:bricks","Count":1b}}
execute if score @s glib.itemId matches 123 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:brown_banner","Count":1b}}
execute if score @s glib.itemId matches 124 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:brown_bed","Count":1b}}
execute if score @s glib.itemId matches 125 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:brown_candle","Count":1b}}
execute if score @s glib.itemId matches 126 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:brown_carpet","Count":1b}}
execute if score @s glib.itemId matches 127 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:brown_concrete","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
