execute if score @s glib.itemId matches 292 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:dead_fire_coral","Count":1b}}
execute if score @s glib.itemId matches 293 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:dead_fire_coral_block","Count":1b}}
execute if score @s glib.itemId matches 294 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:dead_fire_coral_fan","Count":1b}}
execute if score @s glib.itemId matches 295 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:dead_horn_coral","Count":1b}}
execute if score @s glib.itemId matches 296 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:dead_horn_coral_block","Count":1b}}
execute if score @s glib.itemId matches 297 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:dead_horn_coral_fan","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
