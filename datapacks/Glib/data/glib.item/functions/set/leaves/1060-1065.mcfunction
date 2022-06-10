execute if score @s glib.itemId matches 1060 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:villager_spawn_egg","Count":1b}}
execute if score @s glib.itemId matches 1061 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:vindicator_spawn_egg","Count":1b}}
execute if score @s glib.itemId matches 1062 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:vine","Count":1b}}
execute if score @s glib.itemId matches 1063 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:wandering_trader_spawn_egg","Count":1b}}
execute if score @s glib.itemId matches 1064 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:warden_spawn_egg","Count":1b}}
execute if score @s glib.itemId matches 1065 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:warped_button","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
