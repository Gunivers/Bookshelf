execute if score @s glib.itemId matches 790 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:polished_blackstone_brick_stairs","Count":1b}}
execute if score @s glib.itemId matches 791 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:polished_blackstone_brick_wall","Count":1b}}
execute if score @s glib.itemId matches 792 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:polished_blackstone_bricks","Count":1b}}
execute if score @s glib.itemId matches 793 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:polished_blackstone_button","Count":1b}}
execute if score @s glib.itemId matches 794 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:polished_blackstone_pressure_plate","Count":1b}}
execute if score @s glib.itemId matches 795 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:polished_blackstone_slab","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
