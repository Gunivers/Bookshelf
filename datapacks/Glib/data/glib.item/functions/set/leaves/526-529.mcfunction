execute if score @s glib.itemId matches 526 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:jungle_log","Count":1b}}
execute if score @s glib.itemId matches 527 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:jungle_planks","Count":1b}}
execute if score @s glib.itemId matches 528 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:jungle_pressure_plate","Count":1b}}
execute if score @s glib.itemId matches 529 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:jungle_sapling","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
