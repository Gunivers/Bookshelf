execute if score @s glib.itemId matches 846 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:purpur_stairs","Count":1b}}
execute if score @s glib.itemId matches 847 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:quartz","Count":1b}}
execute if score @s glib.itemId matches 848 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:quartz_block","Count":1b}}
execute if score @s glib.itemId matches 849 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:quartz_bricks","Count":1b}}
execute if score @s glib.itemId matches 850 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:quartz_pillar","Count":1b}}
execute if score @s glib.itemId matches 851 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:quartz_slab","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
