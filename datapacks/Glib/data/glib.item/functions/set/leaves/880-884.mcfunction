execute if score @s glib.itemId matches 880 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:red_nether_bricks","Count":1b}}
execute if score @s glib.itemId matches 881 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:red_sand","Count":1b}}
execute if score @s glib.itemId matches 882 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:red_sandstone","Count":1b}}
execute if score @s glib.itemId matches 883 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:red_sandstone_slab","Count":1b}}
execute if score @s glib.itemId matches 884 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:red_sandstone_stairs","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
