execute if score @s glib.itemId matches 1122 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:wither_rose","Count":1b}}
execute if score @s glib.itemId matches 1123 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:wither_skeleton_skull","Count":1b}}
execute if score @s glib.itemId matches 1124 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:wither_skeleton_spawn_egg","Count":1b}}
execute if score @s glib.itemId matches 1125 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:wolf_spawn_egg","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
