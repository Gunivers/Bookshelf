execute if score @s glib.itemId matches 278 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:dark_oak_stairs","Count":1b}}
execute if score @s glib.itemId matches 279 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:dark_oak_trapdoor","Count":1b}}
execute if score @s glib.itemId matches 280 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:dark_oak_wood","Count":1b}}
execute if score @s glib.itemId matches 281 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:dark_prismarine","Count":1b}}
execute if score @s glib.itemId matches 282 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:dark_prismarine_slab","Count":1b}}
execute if score @s glib.itemId matches 283 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:dark_prismarine_stairs","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
