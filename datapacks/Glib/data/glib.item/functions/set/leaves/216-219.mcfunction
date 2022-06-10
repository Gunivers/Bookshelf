execute if score @s glib.itemId matches 216 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:cow_spawn_egg","Count":1b}}
execute if score @s glib.itemId matches 217 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:cracked_deepslate_bricks","Count":1b}}
execute if score @s glib.itemId matches 218 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:cracked_deepslate_tiles","Count":1b}}
execute if score @s glib.itemId matches 219 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:cracked_nether_bricks","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
