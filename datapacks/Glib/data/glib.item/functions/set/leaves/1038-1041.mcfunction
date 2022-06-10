execute if score @s glib.itemId matches 1038 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:tipped_arrow","Count":1b}}
execute if score @s glib.itemId matches 1039 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:tnt","Count":1b}}
execute if score @s glib.itemId matches 1040 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:tnt_minecart","Count":1b}}
execute if score @s glib.itemId matches 1041 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:torch","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
