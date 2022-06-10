execute if score @s glib.itemId matches 910 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:sandstone_slab","Count":1b}}
execute if score @s glib.itemId matches 911 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:sandstone_stairs","Count":1b}}
execute if score @s glib.itemId matches 912 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:sandstone_wall","Count":1b}}
execute if score @s glib.itemId matches 913 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:scaffolding","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
