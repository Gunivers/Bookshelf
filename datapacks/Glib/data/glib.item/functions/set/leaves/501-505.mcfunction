execute if score @s glib.itemId matches 501 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:iron_boots","Count":1b}}
execute if score @s glib.itemId matches 502 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:iron_chestplate","Count":1b}}
execute if score @s glib.itemId matches 503 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:iron_door","Count":1b}}
execute if score @s glib.itemId matches 504 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:iron_helmet","Count":1b}}
execute if score @s glib.itemId matches 505 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:iron_hoe","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
