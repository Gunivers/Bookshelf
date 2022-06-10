execute if score @s glib.itemId matches 472 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:gunpowder","Count":1b}}
execute if score @s glib.itemId matches 473 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:hanging_roots","Count":1b}}
execute if score @s glib.itemId matches 474 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:hay_block","Count":1b}}
execute if score @s glib.itemId matches 475 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:heart_of_the_sea","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
