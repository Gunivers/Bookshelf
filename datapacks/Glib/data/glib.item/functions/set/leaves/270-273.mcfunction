execute if score @s glib.itemId matches 270 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:dark_oak_fence_gate","Count":1b}}
execute if score @s glib.itemId matches 271 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:dark_oak_leaves","Count":1b}}
execute if score @s glib.itemId matches 272 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:dark_oak_log","Count":1b}}
execute if score @s glib.itemId matches 273 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:dark_oak_planks","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
