execute if score @s glib.itemId matches 188 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:cobbled_deepslate_wall","Count":1b}}
execute if score @s glib.itemId matches 189 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:cobblestone","Count":1b}}
execute if score @s glib.itemId matches 190 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:cobblestone_slab","Count":1b}}
execute if score @s glib.itemId matches 191 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:cobblestone_stairs","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
