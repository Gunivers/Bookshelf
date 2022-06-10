execute if score @s glib.itemId matches 60 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:birch_leaves","Count":1b}}
execute if score @s glib.itemId matches 61 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:birch_log","Count":1b}}
execute if score @s glib.itemId matches 62 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:birch_planks","Count":1b}}
execute if score @s glib.itemId matches 63 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:birch_pressure_plate","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
