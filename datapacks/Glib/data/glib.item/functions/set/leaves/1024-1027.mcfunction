execute if score @s glib.itemId matches 1024 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:stripped_warped_stem","Count":1b}}
execute if score @s glib.itemId matches 1025 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:structure_block","Count":1b}}
execute if score @s glib.itemId matches 1026 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:structure_void","Count":1b}}
execute if score @s glib.itemId matches 1027 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:sugar","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
