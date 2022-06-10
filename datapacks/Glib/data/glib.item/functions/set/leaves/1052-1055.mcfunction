execute if score @s glib.itemId matches 1052 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:tube_coral_fan","Count":1b}}
execute if score @s glib.itemId matches 1053 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:tuff","Count":1b}}
execute if score @s glib.itemId matches 1054 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:turtle_egg","Count":1b}}
execute if score @s glib.itemId matches 1055 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:turtle_helmet","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
