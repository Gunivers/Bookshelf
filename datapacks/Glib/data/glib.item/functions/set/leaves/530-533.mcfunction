execute if score @s glib.itemId matches 530 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:jungle_sign","Count":1b}}
execute if score @s glib.itemId matches 531 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:jungle_slab","Count":1b}}
execute if score @s glib.itemId matches 532 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:jungle_stairs","Count":1b}}
execute if score @s glib.itemId matches 533 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:jungle_trapdoor","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
