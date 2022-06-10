execute if score @s glib.itemId matches 786 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:polished_andesite_stairs","Count":1b}}
execute if score @s glib.itemId matches 787 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:polished_basalt","Count":1b}}
execute if score @s glib.itemId matches 788 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:polished_blackstone","Count":1b}}
execute if score @s glib.itemId matches 789 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:polished_blackstone_brick_slab","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
