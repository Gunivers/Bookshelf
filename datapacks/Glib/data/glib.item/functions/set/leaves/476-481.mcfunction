execute if score @s glib.itemId matches 476 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:heavy_weighted_pressure_plate","Count":1b}}
execute if score @s glib.itemId matches 477 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:hoglin_spawn_egg","Count":1b}}
execute if score @s glib.itemId matches 478 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:honey_block","Count":1b}}
execute if score @s glib.itemId matches 479 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:honey_bottle","Count":1b}}
execute if score @s glib.itemId matches 480 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:honeycomb","Count":1b}}
execute if score @s glib.itemId matches 481 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:honeycomb_block","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
