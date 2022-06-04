execute if score @s glib.itemId matches 17 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:allium","Count":1b}}
execute if score @s glib.itemId matches 18 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:amethyst_block","Count":1b}}
execute if score @s glib.itemId matches 19 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:amethyst_cluster","Count":1b}}
execute if score @s glib.itemId matches 20 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:amethyst_shard","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
