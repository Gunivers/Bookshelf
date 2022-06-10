execute if score @s glib.itemId matches 74 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:black_concrete","Count":1b}}
execute if score @s glib.itemId matches 75 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:black_concrete_powder","Count":1b}}
execute if score @s glib.itemId matches 76 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:black_dye","Count":1b}}
execute if score @s glib.itemId matches 77 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:black_glazed_terracotta","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
