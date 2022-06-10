execute if score @s glib.itemId matches 672 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:music_disc_mellohi","Count":1b}}
execute if score @s glib.itemId matches 673 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:music_disc_otherside","Count":1b}}
execute if score @s glib.itemId matches 674 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:music_disc_pigstep","Count":1b}}
execute if score @s glib.itemId matches 675 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:music_disc_stal","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
