execute if score @s glib.itemId matches 434 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:golden_pickaxe","Count":1b}}
execute if score @s glib.itemId matches 435 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:golden_shovel","Count":1b}}
execute if score @s glib.itemId matches 436 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:golden_sword","Count":1b}}
execute if score @s glib.itemId matches 437 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:granite","Count":1b}}
execute if score @s glib.itemId matches 438 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:granite_slab","Count":1b}}
execute if score @s glib.itemId matches 439 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:granite_stairs","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
