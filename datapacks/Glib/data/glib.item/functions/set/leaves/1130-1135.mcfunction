execute if score @s glib.itemId matches 1130 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:wooden_sword","Count":1b}}
execute if score @s glib.itemId matches 1131 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:writable_book","Count":1b}}
execute if score @s glib.itemId matches 1132 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:written_book","Count":1b}}
execute if score @s glib.itemId matches 1133 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:yellow_banner","Count":1b}}
execute if score @s glib.itemId matches 1134 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:yellow_bed","Count":1b}}
execute if score @s glib.itemId matches 1135 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:yellow_candle","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
