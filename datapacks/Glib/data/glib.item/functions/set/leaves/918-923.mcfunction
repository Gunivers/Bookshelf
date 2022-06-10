execute if score @s glib.itemId matches 918 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:sculk_vein","Count":1b}}
execute if score @s glib.itemId matches 919 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:scute","Count":1b}}
execute if score @s glib.itemId matches 920 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:sea_lantern","Count":1b}}
execute if score @s glib.itemId matches 921 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:sea_pickle","Count":1b}}
execute if score @s glib.itemId matches 922 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:seagrass","Count":1b}}
execute if score @s glib.itemId matches 923 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:shears","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
