execute if score @s glib.itemId matches 658 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:mud_brick_wall","Count":1b}}
execute if score @s glib.itemId matches 659 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:mud_bricks","Count":1b}}
execute if score @s glib.itemId matches 660 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:muddy_mangrove_roots","Count":1b}}
execute if score @s glib.itemId matches 661 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:mule_spawn_egg","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
