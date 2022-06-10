execute if score @s glib.itemId matches 818 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:prismarine_bricks","Count":1b}}
execute if score @s glib.itemId matches 819 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:prismarine_crystals","Count":1b}}
execute if score @s glib.itemId matches 820 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:prismarine_shard","Count":1b}}
execute if score @s glib.itemId matches 821 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:prismarine_slab","Count":1b}}
execute if score @s glib.itemId matches 822 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:prismarine_stairs","Count":1b}}
execute if score @s glib.itemId matches 823 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:prismarine_wall","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
