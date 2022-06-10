execute if score @s glib.itemId matches 772 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:pink_shulker_box","Count":1b}}
execute if score @s glib.itemId matches 773 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:pink_stained_glass","Count":1b}}
execute if score @s glib.itemId matches 774 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:pink_stained_glass_pane","Count":1b}}
execute if score @s glib.itemId matches 775 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:pink_terracotta","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
