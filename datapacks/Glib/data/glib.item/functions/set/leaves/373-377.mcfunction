execute if score @s glib.itemId matches 373 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:endermite_spawn_egg","Count":1b}}
execute if score @s glib.itemId matches 374 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:evoker_spawn_egg","Count":1b}}
execute if score @s glib.itemId matches 375 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:experience_bottle","Count":1b}}
execute if score @s glib.itemId matches 376 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:exposed_copper","Count":1b}}
execute if score @s glib.itemId matches 377 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:exposed_cut_copper","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
