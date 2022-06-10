execute if score @s glib.itemId matches 288 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:dead_bubble_coral","Count":1b}}
execute if score @s glib.itemId matches 289 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:dead_bubble_coral_block","Count":1b}}
execute if score @s glib.itemId matches 290 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:dead_bubble_coral_fan","Count":1b}}
execute if score @s glib.itemId matches 291 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:dead_bush","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
