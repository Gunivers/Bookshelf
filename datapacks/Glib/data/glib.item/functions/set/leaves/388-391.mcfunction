execute if score @s glib.itemId matches 388 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:fire_coral_fan","Count":1b}}
execute if score @s glib.itemId matches 389 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:firework_rocket","Count":1b}}
execute if score @s glib.itemId matches 390 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:firework_star","Count":1b}}
execute if score @s glib.itemId matches 391 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:fishing_rod","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
