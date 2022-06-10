execute if score @s glib.itemId matches 330 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:diamond_pickaxe","Count":1b}}
execute if score @s glib.itemId matches 331 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:diamond_shovel","Count":1b}}
execute if score @s glib.itemId matches 332 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:diamond_sword","Count":1b}}
execute if score @s glib.itemId matches 333 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:diorite","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
