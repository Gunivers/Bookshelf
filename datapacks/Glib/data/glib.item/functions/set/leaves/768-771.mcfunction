execute if score @s glib.itemId matches 768 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:pink_concrete","Count":1b}}
execute if score @s glib.itemId matches 769 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:pink_concrete_powder","Count":1b}}
execute if score @s glib.itemId matches 770 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:pink_dye","Count":1b}}
execute if score @s glib.itemId matches 771 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:pink_glazed_terracotta","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
