execute if score @s glib.itemId matches 1136 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:yellow_carpet","Count":1b}}
execute if score @s glib.itemId matches 1137 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:yellow_concrete","Count":1b}}
execute if score @s glib.itemId matches 1138 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:yellow_concrete_powder","Count":1b}}
execute if score @s glib.itemId matches 1139 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:yellow_dye","Count":1b}}
execute if score @s glib.itemId matches 1140 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:yellow_glazed_terracotta","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
