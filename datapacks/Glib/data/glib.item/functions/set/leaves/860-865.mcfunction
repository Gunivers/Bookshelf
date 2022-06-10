execute if score @s glib.itemId matches 860 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:raw_copper","Count":1b}}
execute if score @s glib.itemId matches 861 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:raw_copper_block","Count":1b}}
execute if score @s glib.itemId matches 862 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:raw_gold","Count":1b}}
execute if score @s glib.itemId matches 863 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:raw_gold_block","Count":1b}}
execute if score @s glib.itemId matches 864 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:raw_iron","Count":1b}}
execute if score @s glib.itemId matches 865 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:raw_iron_block","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
