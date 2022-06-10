execute if score @s glib.itemId matches 50 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:beetroot_seeds","Count":1b}}
execute if score @s glib.itemId matches 51 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:beetroot_soup","Count":1b}}
execute if score @s glib.itemId matches 52 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:bell","Count":1b}}
execute if score @s glib.itemId matches 53 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:big_dripleaf","Count":1b}}
execute if score @s glib.itemId matches 54 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:birch_boat","Count":1b}}
execute if score @s glib.itemId matches 55 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:birch_button","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
