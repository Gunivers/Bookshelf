execute if score @s glib.itemId matches 306 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:deepslate_bricks","Count":1b}}
execute if score @s glib.itemId matches 307 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:deepslate_coal_ore","Count":1b}}
execute if score @s glib.itemId matches 308 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:deepslate_copper_ore","Count":1b}}
execute if score @s glib.itemId matches 309 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:deepslate_diamond_ore","Count":1b}}
execute if score @s glib.itemId matches 310 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:deepslate_emerald_ore","Count":1b}}
execute if score @s glib.itemId matches 311 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:deepslate_gold_ore","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
