execute if score @s glib.itemId matches 102 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:blue_stained_glass","Count":1b}}
execute if score @s glib.itemId matches 103 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:blue_stained_glass_pane","Count":1b}}
execute if score @s glib.itemId matches 104 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:blue_terracotta","Count":1b}}
execute if score @s glib.itemId matches 105 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:blue_wool","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
