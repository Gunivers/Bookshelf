execute if score @s glib.itemId matches 842 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:purple_wool","Count":1b}}
execute if score @s glib.itemId matches 843 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:purpur_block","Count":1b}}
execute if score @s glib.itemId matches 844 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:purpur_pillar","Count":1b}}
execute if score @s glib.itemId matches 845 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:purpur_slab","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
