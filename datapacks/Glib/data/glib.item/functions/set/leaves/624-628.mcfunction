execute if score @s glib.itemId matches 624 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:mangrove_fence_gate","Count":1b}}
execute if score @s glib.itemId matches 625 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:mangrove_leaves","Count":1b}}
execute if score @s glib.itemId matches 626 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:mangrove_log","Count":1b}}
execute if score @s glib.itemId matches 627 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:mangrove_planks","Count":1b}}
execute if score @s glib.itemId matches 628 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:mangrove_pressure_plate","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
