execute if score @s glib.itemId matches 1102 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:weathered_cut_copper_stairs","Count":1b}}
execute if score @s glib.itemId matches 1103 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:weeping_vines","Count":1b}}
execute if score @s glib.itemId matches 1104 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:wet_sponge","Count":1b}}
execute if score @s glib.itemId matches 1105 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:wheat","Count":1b}}
execute if score @s glib.itemId matches 1106 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:wheat_seeds","Count":1b}}
execute if score @s glib.itemId matches 1107 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:white_banner","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
