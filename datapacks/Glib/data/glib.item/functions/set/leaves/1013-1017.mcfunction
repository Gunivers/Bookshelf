execute if score @s glib.itemId matches 1013 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:stripped_dark_oak_log","Count":1b}}
execute if score @s glib.itemId matches 1014 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:stripped_dark_oak_wood","Count":1b}}
execute if score @s glib.itemId matches 1015 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:stripped_jungle_log","Count":1b}}
execute if score @s glib.itemId matches 1016 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:stripped_jungle_wood","Count":1b}}
execute if score @s glib.itemId matches 1017 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:stripped_mangrove_log","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
