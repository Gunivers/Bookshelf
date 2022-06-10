execute if score @s glib.itemId matches 426 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:golden_axe","Count":1b}}
execute if score @s glib.itemId matches 427 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:golden_boots","Count":1b}}
execute if score @s glib.itemId matches 428 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:golden_carrot","Count":1b}}
execute if score @s glib.itemId matches 429 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:golden_chestplate","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
