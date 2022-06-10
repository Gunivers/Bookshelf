execute if score @s glib.itemId matches 928 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:shulker_shell","Count":1b}}
execute if score @s glib.itemId matches 929 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:shulker_spawn_egg","Count":1b}}
execute if score @s glib.itemId matches 930 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:silverfish_spawn_egg","Count":1b}}
execute if score @s glib.itemId matches 931 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:skeleton_horse_spawn_egg","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
