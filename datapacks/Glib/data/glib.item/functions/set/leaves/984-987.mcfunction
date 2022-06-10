execute if score @s glib.itemId matches 984 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:spruce_wood","Count":1b}}
execute if score @s glib.itemId matches 985 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:spyglass","Count":1b}}
execute if score @s glib.itemId matches 986 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:squid_spawn_egg","Count":1b}}
execute if score @s glib.itemId matches 987 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:stick","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
