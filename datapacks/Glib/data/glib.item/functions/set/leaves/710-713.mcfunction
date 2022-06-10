execute if score @s glib.itemId matches 710 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:oak_button","Count":1b}}
execute if score @s glib.itemId matches 711 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:oak_chest_boat","Count":1b}}
execute if score @s glib.itemId matches 712 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:oak_door","Count":1b}}
execute if score @s glib.itemId matches 713 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:oak_fence","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
