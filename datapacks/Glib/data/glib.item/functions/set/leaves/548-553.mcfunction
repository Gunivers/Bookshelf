execute if score @s glib.itemId matches 548 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:leather_chestplate","Count":1b}}
execute if score @s glib.itemId matches 549 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:leather_helmet","Count":1b}}
execute if score @s glib.itemId matches 550 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:leather_horse_armor","Count":1b}}
execute if score @s glib.itemId matches 551 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:leather_leggings","Count":1b}}
execute if score @s glib.itemId matches 552 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:lectern","Count":1b}}
execute if score @s glib.itemId matches 553 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:lever","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
