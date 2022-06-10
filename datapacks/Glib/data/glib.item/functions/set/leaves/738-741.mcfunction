execute if score @s glib.itemId matches 738 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:orange_stained_glass","Count":1b}}
execute if score @s glib.itemId matches 739 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:orange_stained_glass_pane","Count":1b}}
execute if score @s glib.itemId matches 740 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:orange_terracotta","Count":1b}}
execute if score @s glib.itemId matches 741 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:orange_tulip","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
