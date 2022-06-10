execute if score @s glib.itemId matches 572 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:light_gray_concrete","Count":1b}}
execute if score @s glib.itemId matches 573 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:light_gray_concrete_powder","Count":1b}}
execute if score @s glib.itemId matches 574 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:light_gray_dye","Count":1b}}
execute if score @s glib.itemId matches 575 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:light_gray_glazed_terracotta","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
