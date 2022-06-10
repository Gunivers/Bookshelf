execute if score @s glib.itemId matches 344 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:dragon_egg","Count":1b}}
execute if score @s glib.itemId matches 345 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:dragon_head","Count":1b}}
execute if score @s glib.itemId matches 346 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:dried_kelp","Count":1b}}
execute if score @s glib.itemId matches 347 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:dried_kelp_block","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
