execute if score @s glib.itemId matches 358 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:enchanted_book","Count":1b}}
execute if score @s glib.itemId matches 359 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:enchanted_golden_apple","Count":1b}}
execute if score @s glib.itemId matches 360 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:enchanting_table","Count":1b}}
execute if score @s glib.itemId matches 361 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:end_crystal","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
