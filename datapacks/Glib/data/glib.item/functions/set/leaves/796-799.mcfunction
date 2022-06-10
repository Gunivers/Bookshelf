execute if score @s glib.itemId matches 796 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:polished_blackstone_stairs","Count":1b}}
execute if score @s glib.itemId matches 797 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:polished_blackstone_wall","Count":1b}}
execute if score @s glib.itemId matches 798 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:polished_deepslate","Count":1b}}
execute if score @s glib.itemId matches 799 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:polished_deepslate_slab","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
