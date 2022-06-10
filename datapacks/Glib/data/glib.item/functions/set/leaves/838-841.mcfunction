execute if score @s glib.itemId matches 838 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:purple_shulker_box","Count":1b}}
execute if score @s glib.itemId matches 839 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:purple_stained_glass","Count":1b}}
execute if score @s glib.itemId matches 840 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:purple_stained_glass_pane","Count":1b}}
execute if score @s glib.itemId matches 841 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:purple_terracotta","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
