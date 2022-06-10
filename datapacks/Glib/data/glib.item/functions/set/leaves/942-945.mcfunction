execute if score @s glib.itemId matches 942 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:smooth_basalt","Count":1b}}
execute if score @s glib.itemId matches 943 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:smooth_quartz","Count":1b}}
execute if score @s glib.itemId matches 944 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:smooth_quartz_slab","Count":1b}}
execute if score @s glib.itemId matches 945 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:smooth_quartz_stairs","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
