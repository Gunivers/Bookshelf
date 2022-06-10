execute if score @s glib.itemId matches 482 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:hopper","Count":1b}}
execute if score @s glib.itemId matches 483 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:hopper_minecart","Count":1b}}
execute if score @s glib.itemId matches 484 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:horn_coral","Count":1b}}
execute if score @s glib.itemId matches 485 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:horn_coral_block","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
