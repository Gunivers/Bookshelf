execute if score @s glib.itemId matches 30 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:axolotl_bucket","Count":1b}}
execute if score @s glib.itemId matches 31 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:axolotl_spawn_egg","Count":1b}}
execute if score @s glib.itemId matches 32 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:azalea","Count":1b}}
execute if score @s glib.itemId matches 33 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:azalea_leaves","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
