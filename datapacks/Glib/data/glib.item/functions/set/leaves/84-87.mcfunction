execute if score @s glib.itemId matches 84 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:blackstone_slab","Count":1b}}
execute if score @s glib.itemId matches 85 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:blackstone_stairs","Count":1b}}
execute if score @s glib.itemId matches 86 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:blackstone_wall","Count":1b}}
execute if score @s glib.itemId matches 87 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:blast_furnace","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
