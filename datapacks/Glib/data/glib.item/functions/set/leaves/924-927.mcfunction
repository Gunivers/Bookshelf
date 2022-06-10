execute if score @s glib.itemId matches 924 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:sheep_spawn_egg","Count":1b}}
execute if score @s glib.itemId matches 925 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:shield","Count":1b}}
execute if score @s glib.itemId matches 926 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:shroomlight","Count":1b}}
execute if score @s glib.itemId matches 927 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:shulker_box","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
