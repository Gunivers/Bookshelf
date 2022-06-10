execute if score @s glib.itemId matches 274 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:dark_oak_pressure_plate","Count":1b}}
execute if score @s glib.itemId matches 275 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:dark_oak_sapling","Count":1b}}
execute if score @s glib.itemId matches 276 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:dark_oak_sign","Count":1b}}
execute if score @s glib.itemId matches 277 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:dark_oak_slab","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
