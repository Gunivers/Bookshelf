execute if score @s glib.itemId matches 398 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:flowering_azalea_leaves","Count":1b}}
execute if score @s glib.itemId matches 399 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:fox_spawn_egg","Count":1b}}
execute if score @s glib.itemId matches 400 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:frog_spawn_egg","Count":1b}}
execute if score @s glib.itemId matches 401 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:frogspawn","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
