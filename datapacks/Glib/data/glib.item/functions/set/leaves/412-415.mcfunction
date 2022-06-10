execute if score @s glib.itemId matches 412 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:glow_berries","Count":1b}}
execute if score @s glib.itemId matches 413 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:glow_ink_sac","Count":1b}}
execute if score @s glib.itemId matches 414 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:glow_item_frame","Count":1b}}
execute if score @s glib.itemId matches 415 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:glow_lichen","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
