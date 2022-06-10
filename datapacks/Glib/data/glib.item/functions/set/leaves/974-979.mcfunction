execute if score @s glib.itemId matches 974 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:spruce_fence_gate","Count":1b}}
execute if score @s glib.itemId matches 975 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:spruce_leaves","Count":1b}}
execute if score @s glib.itemId matches 976 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:spruce_log","Count":1b}}
execute if score @s glib.itemId matches 977 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:spruce_planks","Count":1b}}
execute if score @s glib.itemId matches 978 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:spruce_pressure_plate","Count":1b}}
execute if score @s glib.itemId matches 979 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:spruce_sapling","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
