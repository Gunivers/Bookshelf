execute if score @s glib.itemId matches 718 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:oak_pressure_plate","Count":1b}}
execute if score @s glib.itemId matches 719 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:oak_sapling","Count":1b}}
execute if score @s glib.itemId matches 720 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:oak_sign","Count":1b}}
execute if score @s glib.itemId matches 721 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:oak_slab","Count":1b}}
execute if score @s glib.itemId matches 722 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:oak_stairs","Count":1b}}
execute if score @s glib.itemId matches 723 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:oak_trapdoor","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
