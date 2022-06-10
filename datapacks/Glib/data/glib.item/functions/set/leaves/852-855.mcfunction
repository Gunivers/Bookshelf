execute if score @s glib.itemId matches 852 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:quartz_stairs","Count":1b}}
execute if score @s glib.itemId matches 853 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:rabbit","Count":1b}}
execute if score @s glib.itemId matches 854 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:rabbit_foot","Count":1b}}
execute if score @s glib.itemId matches 855 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:rabbit_hide","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
