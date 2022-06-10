execute if score @s glib.itemId matches 230 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:crimson_fungus","Count":1b}}
execute if score @s glib.itemId matches 231 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:crimson_hyphae","Count":1b}}
execute if score @s glib.itemId matches 232 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:crimson_nylium","Count":1b}}
execute if score @s glib.itemId matches 233 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:crimson_planks","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
