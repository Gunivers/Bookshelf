execute if score @s glib.itemId matches 998 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:stone_pressure_plate","Count":1b}}
execute if score @s glib.itemId matches 999 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:stone_shovel","Count":1b}}
execute if score @s glib.itemId matches 1000 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:stone_slab","Count":1b}}
execute if score @s glib.itemId matches 1001 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:stone_stairs","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
