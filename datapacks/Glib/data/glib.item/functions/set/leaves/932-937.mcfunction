execute if score @s glib.itemId matches 932 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:skeleton_skull","Count":1b}}
execute if score @s glib.itemId matches 933 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:skeleton_spawn_egg","Count":1b}}
execute if score @s glib.itemId matches 934 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:skull_banner_pattern","Count":1b}}
execute if score @s glib.itemId matches 935 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:slime_ball","Count":1b}}
execute if score @s glib.itemId matches 936 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:slime_block","Count":1b}}
execute if score @s glib.itemId matches 937 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:slime_spawn_egg","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
