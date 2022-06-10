execute if score @s glib.itemId matches 782 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:poisonous_potato","Count":1b}}
execute if score @s glib.itemId matches 783 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:polar_bear_spawn_egg","Count":1b}}
execute if score @s glib.itemId matches 784 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:polished_andesite","Count":1b}}
execute if score @s glib.itemId matches 785 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:polished_andesite_slab","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
