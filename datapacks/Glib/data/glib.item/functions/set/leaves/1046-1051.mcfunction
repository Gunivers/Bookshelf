execute if score @s glib.itemId matches 1046 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:tripwire_hook","Count":1b}}
execute if score @s glib.itemId matches 1047 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:tropical_fish","Count":1b}}
execute if score @s glib.itemId matches 1048 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:tropical_fish_bucket","Count":1b}}
execute if score @s glib.itemId matches 1049 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:tropical_fish_spawn_egg","Count":1b}}
execute if score @s glib.itemId matches 1050 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:tube_coral","Count":1b}}
execute if score @s glib.itemId matches 1051 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:tube_coral_block","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
