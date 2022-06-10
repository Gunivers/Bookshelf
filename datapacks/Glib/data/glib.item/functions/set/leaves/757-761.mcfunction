execute if score @s glib.itemId matches 757 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:phantom_membrane","Count":1b}}
execute if score @s glib.itemId matches 758 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:phantom_spawn_egg","Count":1b}}
execute if score @s glib.itemId matches 759 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:pig_spawn_egg","Count":1b}}
execute if score @s glib.itemId matches 760 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:piglin_banner_pattern","Count":1b}}
execute if score @s glib.itemId matches 761 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:piglin_brute_spawn_egg","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
