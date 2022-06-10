execute if score @s glib.itemId matches 946 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:smooth_red_sandstone","Count":1b}}
execute if score @s glib.itemId matches 947 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:smooth_red_sandstone_slab","Count":1b}}
execute if score @s glib.itemId matches 948 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:smooth_red_sandstone_stairs","Count":1b}}
execute if score @s glib.itemId matches 949 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:smooth_sandstone","Count":1b}}
execute if score @s glib.itemId matches 950 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:smooth_sandstone_slab","Count":1b}}
execute if score @s glib.itemId matches 951 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:smooth_sandstone_stairs","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
