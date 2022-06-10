execute if score @s glib.itemId matches 520 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:jungle_button","Count":1b}}
execute if score @s glib.itemId matches 521 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:jungle_chest_boat","Count":1b}}
execute if score @s glib.itemId matches 522 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:jungle_door","Count":1b}}
execute if score @s glib.itemId matches 523 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:jungle_fence","Count":1b}}
execute if score @s glib.itemId matches 524 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:jungle_fence_gate","Count":1b}}
execute if score @s glib.itemId matches 525 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:jungle_leaves","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
