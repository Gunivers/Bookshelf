execute if score @s glib.itemId matches 714 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:oak_fence_gate","Count":1b}}
execute if score @s glib.itemId matches 715 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:oak_leaves","Count":1b}}
execute if score @s glib.itemId matches 716 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:oak_log","Count":1b}}
execute if score @s glib.itemId matches 717 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:oak_planks","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
