execute if score @s glib.itemId matches 34 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:azure_bluet","Count":1b}}
execute if score @s glib.itemId matches 35 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:baked_potato","Count":1b}}
execute if score @s glib.itemId matches 36 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:bamboo","Count":1b}}
execute if score @s glib.itemId matches 37 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:barrel","Count":1b}}
execute if score @s glib.itemId matches 38 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:barrier","Count":1b}}
execute if score @s glib.itemId matches 39 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:basalt","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
