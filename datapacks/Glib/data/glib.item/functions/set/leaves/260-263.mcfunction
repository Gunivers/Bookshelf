execute if score @s glib.itemId matches 260 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:cyan_stained_glass_pane","Count":1b}}
execute if score @s glib.itemId matches 261 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:cyan_terracotta","Count":1b}}
execute if score @s glib.itemId matches 262 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:cyan_wool","Count":1b}}
execute if score @s glib.itemId matches 263 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:damaged_anvil","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
