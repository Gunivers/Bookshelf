execute if score @s glib.itemId matches 402 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:furnace","Count":1b}}
execute if score @s glib.itemId matches 403 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:furnace_minecart","Count":1b}}
execute if score @s glib.itemId matches 404 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:ghast_spawn_egg","Count":1b}}
execute if score @s glib.itemId matches 405 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:ghast_tear","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
