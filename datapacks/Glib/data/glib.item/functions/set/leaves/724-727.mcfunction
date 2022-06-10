execute if score @s glib.itemId matches 724 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:oak_wood","Count":1b}}
execute if score @s glib.itemId matches 725 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:observer","Count":1b}}
execute if score @s glib.itemId matches 726 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:obsidian","Count":1b}}
execute if score @s glib.itemId matches 727 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:ocelot_spawn_egg","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
