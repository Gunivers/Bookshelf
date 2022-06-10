execute if score @s glib.itemId matches 486 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:horn_coral_fan","Count":1b}}
execute if score @s glib.itemId matches 487 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:horse_spawn_egg","Count":1b}}
execute if score @s glib.itemId matches 488 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:husk_spawn_egg","Count":1b}}
execute if score @s glib.itemId matches 489 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:ice","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
