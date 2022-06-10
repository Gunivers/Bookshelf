execute if score @s glib.itemId matches 742 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:orange_wool","Count":1b}}
execute if score @s glib.itemId matches 743 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:oxeye_daisy","Count":1b}}
execute if score @s glib.itemId matches 744 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:oxidized_copper","Count":1b}}
execute if score @s glib.itemId matches 745 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:oxidized_cut_copper","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
