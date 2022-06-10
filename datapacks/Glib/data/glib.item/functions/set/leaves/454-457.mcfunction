execute if score @s glib.itemId matches 454 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:gray_stained_glass_pane","Count":1b}}
execute if score @s glib.itemId matches 455 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:gray_terracotta","Count":1b}}
execute if score @s glib.itemId matches 456 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:gray_wool","Count":1b}}
execute if score @s glib.itemId matches 457 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:green_banner","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
