execute if score @s glib.itemId matches 420 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:goat_spawn_egg","Count":1b}}
execute if score @s glib.itemId matches 421 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:gold_block","Count":1b}}
execute if score @s glib.itemId matches 422 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:gold_ingot","Count":1b}}
execute if score @s glib.itemId matches 423 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:gold_nugget","Count":1b}}
execute if score @s glib.itemId matches 424 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:gold_ore","Count":1b}}
execute if score @s glib.itemId matches 425 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:golden_apple","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
