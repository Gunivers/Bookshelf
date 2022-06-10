execute if score @s glib.itemId matches 752 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:paper","Count":1b}}
execute if score @s glib.itemId matches 753 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:parrot_spawn_egg","Count":1b}}
execute if score @s glib.itemId matches 754 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:pearlescent_froglight","Count":1b}}
execute if score @s glib.itemId matches 755 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:peony","Count":1b}}
execute if score @s glib.itemId matches 756 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:petrified_oak_slab","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
