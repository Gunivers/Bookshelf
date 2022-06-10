execute if score @s glib.itemId matches 890 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:red_tulip","Count":1b}}
execute if score @s glib.itemId matches 891 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:red_wool","Count":1b}}
execute if score @s glib.itemId matches 892 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:redstone","Count":1b}}
execute if score @s glib.itemId matches 893 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:redstone_block","Count":1b}}
execute if score @s glib.itemId matches 894 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:redstone_lamp","Count":1b}}
execute if score @s glib.itemId matches 895 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:redstone_ore","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
