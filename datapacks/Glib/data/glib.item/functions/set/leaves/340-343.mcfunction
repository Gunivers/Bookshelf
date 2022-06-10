execute if score @s glib.itemId matches 340 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:dispenser","Count":1b}}
execute if score @s glib.itemId matches 341 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:dolphin_spawn_egg","Count":1b}}
execute if score @s glib.itemId matches 342 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:donkey_spawn_egg","Count":1b}}
execute if score @s glib.itemId matches 343 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:dragon_breath","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
