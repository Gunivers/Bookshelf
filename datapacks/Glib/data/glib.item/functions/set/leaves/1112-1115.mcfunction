execute if score @s glib.itemId matches 1112 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:white_concrete_powder","Count":1b}}
execute if score @s glib.itemId matches 1113 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:white_dye","Count":1b}}
execute if score @s glib.itemId matches 1114 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:white_glazed_terracotta","Count":1b}}
execute if score @s glib.itemId matches 1115 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:white_shulker_box","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
