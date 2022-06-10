execute if score @s glib.itemId matches 804 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:polished_diorite_stairs","Count":1b}}
execute if score @s glib.itemId matches 805 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:polished_granite","Count":1b}}
execute if score @s glib.itemId matches 806 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:polished_granite_slab","Count":1b}}
execute if score @s glib.itemId matches 807 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:polished_granite_stairs","Count":1b}}
execute if score @s glib.itemId matches 808 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:popped_chorus_fruit","Count":1b}}
execute if score @s glib.itemId matches 809 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:poppy","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
