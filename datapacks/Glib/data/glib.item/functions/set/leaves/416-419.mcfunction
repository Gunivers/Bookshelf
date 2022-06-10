execute if score @s glib.itemId matches 416 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:glow_squid_spawn_egg","Count":1b}}
execute if score @s glib.itemId matches 417 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:glowstone","Count":1b}}
execute if score @s glib.itemId matches 418 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:glowstone_dust","Count":1b}}
execute if score @s glib.itemId matches 419 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:goat_horn","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
