execute if score @s glib.itemId matches 800 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:polished_deepslate_stairs","Count":1b}}
execute if score @s glib.itemId matches 801 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:polished_deepslate_wall","Count":1b}}
execute if score @s glib.itemId matches 802 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:polished_diorite","Count":1b}}
execute if score @s glib.itemId matches 803 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:polished_diorite_slab","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
