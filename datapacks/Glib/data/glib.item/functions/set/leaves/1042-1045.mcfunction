execute if score @s glib.itemId matches 1042 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:totem_of_undying","Count":1b}}
execute if score @s glib.itemId matches 1043 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:trader_llama_spawn_egg","Count":1b}}
execute if score @s glib.itemId matches 1044 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:trapped_chest","Count":1b}}
execute if score @s glib.itemId matches 1045 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:trident","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
