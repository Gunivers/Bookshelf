execute if score @s glib.itemId matches 988 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:sticky_piston","Count":1b}}
execute if score @s glib.itemId matches 989 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:stone","Count":1b}}
execute if score @s glib.itemId matches 990 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:stone_axe","Count":1b}}
execute if score @s glib.itemId matches 991 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:stone_brick_slab","Count":1b}}
execute if score @s glib.itemId matches 992 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:stone_brick_stairs","Count":1b}}
execute if score @s glib.itemId matches 993 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:stone_brick_wall","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
