execute if score @s glib.itemId matches 980 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:spruce_sign","Count":1b}}
execute if score @s glib.itemId matches 981 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:spruce_slab","Count":1b}}
execute if score @s glib.itemId matches 982 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:spruce_stairs","Count":1b}}
execute if score @s glib.itemId matches 983 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:spruce_trapdoor","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
