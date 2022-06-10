execute if score @s glib.itemId matches 956 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:snowball","Count":1b}}
execute if score @s glib.itemId matches 957 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:soul_campfire","Count":1b}}
execute if score @s glib.itemId matches 958 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:soul_lantern","Count":1b}}
execute if score @s glib.itemId matches 959 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:soul_sand","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
