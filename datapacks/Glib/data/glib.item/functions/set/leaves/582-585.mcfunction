execute if score @s glib.itemId matches 582 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:lightning_rod","Count":1b}}
execute if score @s glib.itemId matches 583 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:lilac","Count":1b}}
execute if score @s glib.itemId matches 584 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:lily_of_the_valley","Count":1b}}
execute if score @s glib.itemId matches 585 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:lily_pad","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
