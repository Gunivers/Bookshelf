execute if score @s glib.itemId matches 406 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:gilded_blackstone","Count":1b}}
execute if score @s glib.itemId matches 407 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:glass","Count":1b}}
execute if score @s glib.itemId matches 408 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:glass_bottle","Count":1b}}
execute if score @s glib.itemId matches 409 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:glass_pane","Count":1b}}
execute if score @s glib.itemId matches 410 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:glistering_melon_slice","Count":1b}}
execute if score @s glib.itemId matches 411 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:globe_banner_pattern","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
