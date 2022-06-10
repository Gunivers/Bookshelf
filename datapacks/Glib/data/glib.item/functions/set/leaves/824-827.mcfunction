execute if score @s glib.itemId matches 824 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:pufferfish","Count":1b}}
execute if score @s glib.itemId matches 825 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:pufferfish_bucket","Count":1b}}
execute if score @s glib.itemId matches 826 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:pufferfish_spawn_egg","Count":1b}}
execute if score @s glib.itemId matches 827 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:pumpkin","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
