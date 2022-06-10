execute if score @s glib.itemId matches 644 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:mooshroom_spawn_egg","Count":1b}}
execute if score @s glib.itemId matches 645 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:moss_block","Count":1b}}
execute if score @s glib.itemId matches 646 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:moss_carpet","Count":1b}}
execute if score @s glib.itemId matches 647 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:mossy_cobblestone","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
