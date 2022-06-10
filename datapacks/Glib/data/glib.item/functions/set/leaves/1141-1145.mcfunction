execute if score @s glib.itemId matches 1141 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:yellow_shulker_box","Count":1b}}
execute if score @s glib.itemId matches 1142 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:yellow_stained_glass","Count":1b}}
execute if score @s glib.itemId matches 1143 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:yellow_stained_glass_pane","Count":1b}}
execute if score @s glib.itemId matches 1144 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:yellow_terracotta","Count":1b}}
execute if score @s glib.itemId matches 1145 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:yellow_wool","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
