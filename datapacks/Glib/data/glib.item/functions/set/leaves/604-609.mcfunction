execute if score @s glib.itemId matches 604 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:magenta_bed","Count":1b}}
execute if score @s glib.itemId matches 605 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:magenta_candle","Count":1b}}
execute if score @s glib.itemId matches 606 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:magenta_carpet","Count":1b}}
execute if score @s glib.itemId matches 607 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:magenta_concrete","Count":1b}}
execute if score @s glib.itemId matches 608 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:magenta_concrete_powder","Count":1b}}
execute if score @s glib.itemId matches 609 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:magenta_dye","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
