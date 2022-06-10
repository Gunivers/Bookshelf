execute if score @s glib.itemId matches 1074 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:warped_pressure_plate","Count":1b}}
execute if score @s glib.itemId matches 1075 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:warped_roots","Count":1b}}
execute if score @s glib.itemId matches 1076 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:warped_sign","Count":1b}}
execute if score @s glib.itemId matches 1077 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:warped_slab","Count":1b}}
execute if score @s glib.itemId matches 1078 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:warped_stairs","Count":1b}}
execute if score @s glib.itemId matches 1079 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:warped_stem","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
