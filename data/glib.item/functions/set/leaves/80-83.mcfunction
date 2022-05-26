execute if score @s glib.itemId matches 80 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:blackstone","Count":1b}}
execute if score @s glib.itemId matches 81 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:blackstone_slab","Count":1b}}
execute if score @s glib.itemId matches 82 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:blackstone_stairs","Count":1b}}
execute if score @s glib.itemId matches 83 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:blackstone_wall","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
