execute if score @s glib.itemId matches 732 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:orange_carpet","Count":1b}}
execute if score @s glib.itemId matches 733 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:orange_concrete","Count":1b}}
execute if score @s glib.itemId matches 734 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:orange_concrete_powder","Count":1b}}
execute if score @s glib.itemId matches 735 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:orange_dye","Count":1b}}
execute if score @s glib.itemId matches 736 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:orange_glazed_terracotta","Count":1b}}
execute if score @s glib.itemId matches 737 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:orange_shulker_box","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
