execute if score @s glib.itemId matches 284 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:daylight_detector","Count":1b}}
execute if score @s glib.itemId matches 285 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:dead_brain_coral","Count":1b}}
execute if score @s glib.itemId matches 286 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:dead_brain_coral_block","Count":1b}}
execute if score @s glib.itemId matches 287 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:dead_brain_coral_fan","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
