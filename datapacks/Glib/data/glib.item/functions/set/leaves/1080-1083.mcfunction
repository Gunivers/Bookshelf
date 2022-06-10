execute if score @s glib.itemId matches 1080 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:warped_trapdoor","Count":1b}}
execute if score @s glib.itemId matches 1081 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:warped_wart_block","Count":1b}}
execute if score @s glib.itemId matches 1082 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:water_bucket","Count":1b}}
execute if score @s glib.itemId matches 1083 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:waxed_copper_block","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
