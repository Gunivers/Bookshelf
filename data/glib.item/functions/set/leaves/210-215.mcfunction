execute if score @s glib.itemId matches 210 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:copper_ingot","Count":1b}}
execute if score @s glib.itemId matches 211 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:copper_ore","Count":1b}}
execute if score @s glib.itemId matches 212 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:cornflower","Count":1b}}
execute if score @s glib.itemId matches 213 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:cow_spawn_egg","Count":1b}}
execute if score @s glib.itemId matches 214 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:cracked_deepslate_bricks","Count":1b}}
execute if score @s glib.itemId matches 215 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:cracked_deepslate_tiles","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
