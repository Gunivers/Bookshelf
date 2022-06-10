execute if score @s glib.itemId matches 648 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:mossy_cobblestone_slab","Count":1b}}
execute if score @s glib.itemId matches 649 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:mossy_cobblestone_stairs","Count":1b}}
execute if score @s glib.itemId matches 650 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:mossy_cobblestone_wall","Count":1b}}
execute if score @s glib.itemId matches 651 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:mossy_stone_brick_slab","Count":1b}}
execute if score @s glib.itemId matches 652 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:mossy_stone_brick_stairs","Count":1b}}
execute if score @s glib.itemId matches 653 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:mossy_stone_brick_wall","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
