execute if score @s glib.itemId matches 1066 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:warped_door","Count":1b}}
execute if score @s glib.itemId matches 1067 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:warped_fence","Count":1b}}
execute if score @s glib.itemId matches 1068 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:warped_fence_gate","Count":1b}}
execute if score @s glib.itemId matches 1069 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:warped_fungus","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
