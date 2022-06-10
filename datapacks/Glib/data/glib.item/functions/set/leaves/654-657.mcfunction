execute if score @s glib.itemId matches 654 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:mossy_stone_bricks","Count":1b}}
execute if score @s glib.itemId matches 655 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:mud","Count":1b}}
execute if score @s glib.itemId matches 656 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:mud_brick_slab","Count":1b}}
execute if score @s glib.itemId matches 657 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:mud_brick_stairs","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
