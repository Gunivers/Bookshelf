execute if score @s glib.itemId matches 261 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:dandelion","Count":1b}}
execute if score @s glib.itemId matches 262 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:dark_oak_boat","Count":1b}}
execute if score @s glib.itemId matches 263 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:dark_oak_button","Count":1b}}
execute if score @s glib.itemId matches 264 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:dark_oak_door","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
