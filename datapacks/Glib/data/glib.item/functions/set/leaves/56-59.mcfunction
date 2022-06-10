execute if score @s glib.itemId matches 56 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:birch_chest_boat","Count":1b}}
execute if score @s glib.itemId matches 57 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:birch_door","Count":1b}}
execute if score @s glib.itemId matches 58 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:birch_fence","Count":1b}}
execute if score @s glib.itemId matches 59 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:birch_fence_gate","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
