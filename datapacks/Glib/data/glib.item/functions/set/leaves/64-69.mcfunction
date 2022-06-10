execute if score @s glib.itemId matches 64 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:birch_sapling","Count":1b}}
execute if score @s glib.itemId matches 65 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:birch_sign","Count":1b}}
execute if score @s glib.itemId matches 66 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:birch_slab","Count":1b}}
execute if score @s glib.itemId matches 67 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:birch_stairs","Count":1b}}
execute if score @s glib.itemId matches 68 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:birch_trapdoor","Count":1b}}
execute if score @s glib.itemId matches 69 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:birch_wood","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
