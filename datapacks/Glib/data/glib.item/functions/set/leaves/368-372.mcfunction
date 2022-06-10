execute if score @s glib.itemId matches 368 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:end_stone_bricks","Count":1b}}
execute if score @s glib.itemId matches 369 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:ender_chest","Count":1b}}
execute if score @s glib.itemId matches 370 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:ender_eye","Count":1b}}
execute if score @s glib.itemId matches 371 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:ender_pearl","Count":1b}}
execute if score @s glib.itemId matches 372 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:enderman_spawn_egg","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
