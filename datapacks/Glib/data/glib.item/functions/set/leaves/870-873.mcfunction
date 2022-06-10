execute if score @s glib.itemId matches 870 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:red_carpet","Count":1b}}
execute if score @s glib.itemId matches 871 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:red_concrete","Count":1b}}
execute if score @s glib.itemId matches 872 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:red_concrete_powder","Count":1b}}
execute if score @s glib.itemId matches 873 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:red_dye","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
