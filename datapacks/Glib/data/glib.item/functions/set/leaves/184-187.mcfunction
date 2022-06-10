execute if score @s glib.itemId matches 184 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:coarse_dirt","Count":1b}}
execute if score @s glib.itemId matches 185 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:cobbled_deepslate","Count":1b}}
execute if score @s glib.itemId matches 186 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:cobbled_deepslate_slab","Count":1b}}
execute if score @s glib.itemId matches 187 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:cobbled_deepslate_stairs","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
