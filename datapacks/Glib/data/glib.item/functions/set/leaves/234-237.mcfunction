execute if score @s glib.itemId matches 234 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:crimson_slab","Count":1b}}
execute if score @s glib.itemId matches 235 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:crimson_stairs","Count":1b}}
execute if score @s glib.itemId matches 236 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:crimson_stem","Count":1b}}
execute if score @s glib.itemId matches 237 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:crimson_trapdoor","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
