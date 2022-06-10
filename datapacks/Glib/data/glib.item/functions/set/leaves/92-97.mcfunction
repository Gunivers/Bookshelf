execute if score @s glib.itemId matches 92 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:blue_bed","Count":1b}}
execute if score @s glib.itemId matches 93 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:blue_candle","Count":1b}}
execute if score @s glib.itemId matches 94 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:blue_carpet","Count":1b}}
execute if score @s glib.itemId matches 95 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:blue_concrete","Count":1b}}
execute if score @s glib.itemId matches 96 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:blue_concrete_powder","Count":1b}}
execute if score @s glib.itemId matches 97 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:blue_dye","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
