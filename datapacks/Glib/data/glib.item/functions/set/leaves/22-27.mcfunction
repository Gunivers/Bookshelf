execute if score @s glib.itemId matches 22 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:amethyst_shard","Count":1b}}
execute if score @s glib.itemId matches 23 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:ancient_debris","Count":1b}}
execute if score @s glib.itemId matches 24 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:andesite","Count":1b}}
execute if score @s glib.itemId matches 25 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:andesite_slab","Count":1b}}
execute if score @s glib.itemId matches 26 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:andesite_stairs","Count":1b}}
execute if score @s glib.itemId matches 27 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:andesite_wall","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
