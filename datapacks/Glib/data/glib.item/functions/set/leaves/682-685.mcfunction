execute if score @s glib.itemId matches 682 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:nautilus_shell","Count":1b}}
execute if score @s glib.itemId matches 683 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:nether_brick","Count":1b}}
execute if score @s glib.itemId matches 684 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:nether_brick_fence","Count":1b}}
execute if score @s glib.itemId matches 685 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:nether_brick_slab","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
