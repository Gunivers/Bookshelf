execute if score @s glib.itemId matches 1056 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:turtle_spawn_egg","Count":1b}}
execute if score @s glib.itemId matches 1057 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:twisting_vines","Count":1b}}
execute if score @s glib.itemId matches 1058 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:verdant_froglight","Count":1b}}
execute if score @s glib.itemId matches 1059 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:vex_spawn_egg","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
