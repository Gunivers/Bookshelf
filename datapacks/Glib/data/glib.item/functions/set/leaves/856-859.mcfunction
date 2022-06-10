execute if score @s glib.itemId matches 856 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:rabbit_spawn_egg","Count":1b}}
execute if score @s glib.itemId matches 857 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:rabbit_stew","Count":1b}}
execute if score @s glib.itemId matches 858 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:rail","Count":1b}}
execute if score @s glib.itemId matches 859 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:ravager_spawn_egg","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
