execute if score @s glib.itemId matches 298 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:dead_tube_coral","Count":1b}}
execute if score @s glib.itemId matches 299 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:dead_tube_coral_block","Count":1b}}
execute if score @s glib.itemId matches 300 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:dead_tube_coral_fan","Count":1b}}
execute if score @s glib.itemId matches 301 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:debug_stick","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
