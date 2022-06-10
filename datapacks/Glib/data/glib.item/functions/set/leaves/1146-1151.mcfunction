execute if score @s glib.itemId matches 1146 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:zoglin_spawn_egg","Count":1b}}
execute if score @s glib.itemId matches 1147 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:zombie_head","Count":1b}}
execute if score @s glib.itemId matches 1148 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:zombie_horse_spawn_egg","Count":1b}}
execute if score @s glib.itemId matches 1149 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:zombie_spawn_egg","Count":1b}}
execute if score @s glib.itemId matches 1150 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:zombie_villager_spawn_egg","Count":1b}}
execute if score @s glib.itemId matches 1151 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:zombified_piglin_spawn_eg","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
