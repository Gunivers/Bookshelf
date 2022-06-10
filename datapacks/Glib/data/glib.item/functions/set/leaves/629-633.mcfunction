execute if score @s glib.itemId matches 629 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:mangrove_propagule","Count":1b}}
execute if score @s glib.itemId matches 630 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:mangrove_roots","Count":1b}}
execute if score @s glib.itemId matches 631 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:mangrove_sign","Count":1b}}
execute if score @s glib.itemId matches 632 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:mangrove_slab","Count":1b}}
execute if score @s glib.itemId matches 633 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:mangrove_stairs","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
